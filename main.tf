provider "null" {
  version = ">= 2.1.0"
}

provider "local" {
  version = ">= 1.4.0"
}

resource "local_file" "install_script" {
  content  = <<EOF
#!/bin/bash
curl -L https://linuxpatch.com/install.sh -o /tmp/install.sh
chmod +x /tmp/install.sh
EOF
  filename = "/tmp/install_script.sh"
}

resource "null_resource" "run_install_script" {
  depends_on = [local_file.install_script]

  provisioner "remote-exec" {
    connection {
      type     = "ssh"
      user     = "root"
      host     = var.target_host
      private_key = file("<path_to_your_private_key>")
    }

    inline = [
      "bash /tmp/install_script.sh",
      "LP_KEY=${var.lp_key} /tmp/install.sh",
    ]
  }

  provisioner "remote-exec" {
    when = destroy
    connection {
      type     = "ssh"
      user     = "root"
      host     = var.target_host
      private_key = file("<path_to_your_private_key>")
    }

    inline = [
      "rm -f /tmp/install.sh /tmp/install_script.sh",
    ]
  }
}

resource "null_resource" "ensure_service" {
  depends_on = [null_resource.run_install_script]

  provisioner "remote-exec" {
    connection {
      type     = "ssh"
      user     = "root"
      host     = var.target_host
      private_key = file("<path_to_your_private_key>")
    }

    inline = [
      "systemctl enable linuxpatch-agent",
      "systemctl start linuxpatch-agent",
    ]
  }
}
