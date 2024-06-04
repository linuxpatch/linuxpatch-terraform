# Terraform Module: Install and Manage linuxpatch.com Agent and Service

## Description

This Terraform module automates the process of downloading, executing, and cleaning up an installation script from [linuxpatch.com](https://linuxpatch.com). Additionally, it ensures that the `linuxpatch-agent` service is running and enabled at startup.

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
