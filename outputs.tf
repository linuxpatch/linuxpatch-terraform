output "install_script" {
  value = local_file.install_script.filename
}

output "run_install_script_status" {
  value = null_resource.run_install_script.id
}

output "ensure_service_status" {
  value = null_resource.ensure_service.id
}
