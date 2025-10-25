variable "pmx_node" {
  type = string
}

variable "pmx_user" {
  type = string
}

variable "pmx_user_api_token" {
  default = env("pmx_user_api_token")
}

variable "pmx_url" {
  type = string
}

variable "vm_core" {
  type = number
}

variable "vm_cpu_type" {
  type = string
}

variable "vm_os_type" {
  type = string
}

variable "vm_mem" {
  type = number
}

variable "vm_name" {
  type = string
}

variable "vm_disk_size" {
  type = string
}

variable "vm_disk_format" {
  type = string
  default = "qcow2"
}

variable "vm_disk_datastore" {
  type = string
}

variable "vm_efi_datastore" {
  type = string
}

variable "iso_location" {
  type = string
}

variable "iso_http_directory" {
  type = string
}

variable "vm_bridge" {
  type = string
}

variable "vm_scsi_controller" {
  type = string
}

variable "vm_bios" {
  type = string
}

variable "vm_id" {
  type = string
}

variable "vm_tags" {
  type = string
}

variable "vm_template_description" {
  type = string
}

variable "vm_ssh_user" {
  type = string
}

variable "vm_ssh_timeout" {
  type = string
}

variable "vm_ssh_private_key_file" {
  type = string
}