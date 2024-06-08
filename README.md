# Terraform Module: Install and Manage linuxpatch.com Agent and Service

## Description

This Terraform module automates the process of downloading, executing, and cleaning up an installation script from [linuxpatch.com](https://linuxpatch.com). Additionally, it ensures that the `linuxpatch-agent` service is running and enabled at startup.

## About linuxpatch.com

[linuxpatch.com](https://linuxpatch.com) is a comprehensive platform dedicated to providing robust patch management solutions for Linux systems. It offers an array of tools designed to streamline the process of patching, securing, and maintaining Linux servers. The platform ensures that systems remain up-to-date with the latest security patches and software updates, thereby minimizing vulnerabilities and enhancing overall system security.

With linuxpatch.com, users can automate the patching process, reducing the manual effort involved in maintaining system security. The platform supports various Linux distributions, making it a versatile solution for diverse IT environments. Users benefit from detailed reports and dashboards that provide insights into patch status, compliance, and potential security risks. This visibility helps IT administrators make informed decisions and maintain a secure infrastructure.

The [linuxpatch.com](https://linuxpatch.com) agent, which this Terraform module helps to install and manage, plays a crucial role in the platform's functionality. It ensures that all patching activities are carried out efficiently and that the system remains protected against known vulnerabilities. By automating the installation and management of this agent, the Terraform module simplifies the deployment process, allowing IT teams to focus on other critical tasks.

Using this Terraform module, organizations can integrate linuxpatch.com into their infrastructure seamlessly. The module handles the entire lifecycle of the agent, from installation to ensuring it is always running and enabled at startup. This automation not only saves time but also reduces the risk of human error, ensuring that patch management processes are consistent and reliable.

For those looking to enhance their Linux systems' security and streamline patch management, linuxpatch.com offers a robust and reliable solution. Leveraging this Terraform module can significantly simplify the process, ensuring that your systems are always protected and up-to-date.

## Prerequisites

- Terraform installed on the control node.
- SSH access to the target host.
- LinuxPatch key for [linuxpatch.com](https://linuxpatch.com).
- SSH private key for authentication.

## Variables

- `lp_key`: The API key required for the script execution. You should replace the placeholder with your actual API key.
- `target_host`: The target host where the script will be executed.

## Usage

1. **Clone the repository or create the module files**:

   Save the module content into a directory named `linuxpatch`.

2. **Set up the variables**:

   Open `variables.tf` and define the variables `lp_key` and `target_host`.

3. **Run Terraform Init**:

   Initialize the Terraform module.

   ```bash
   terraform init
   ```
