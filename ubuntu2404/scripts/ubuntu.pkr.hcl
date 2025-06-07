# Due to RedHat requirements AND https://github.com/hashicorp/packer-plugin-proxmox/issues/307 
# We must use an older version of the plugin. I understand that this is an Ubuntu build, but I want my Alma/Ubuntu templates to have identical hardware
packer {
  required_plugins {
    name = {
      version = "=1.2.1"
      source  = "github.com/hashicorp/proxmox"
    }
  }
}


source "proxmox-iso" "ubuntu-cloudinit" {
  insecure_skip_tls_verify = true
  node                     = var.pmx_node
  username                 = var.pmx_user
  token                    = var.pmx_user_api_token
  proxmox_url              = var.pmx_url
  cpu_type                 = var.vm_cpu_type
  os                       = var.vm_os_type
  cores                    = var.vm_core
  memory                   = var.vm_mem
  bios                     = var.vm_bios
  vm_name                  = var.vm_name
  vm_id                    = var.vm_id
  tags                     = var.vm_tags
  template_description     = var.vm_template_description
  ssh_timeout              = var.vm_ssh_timeout
  ssh_username             = var.vm_ssh_user
  ssh_private_key_file     = var.vm_ssh_private_key_file
  http_directory           = var.iso_http_directory
  scsi_controller          = var.vm_scsi_controller
  
    boot_command = [
        "<esc><wait>",
        "e<wait>",
        "<down><down><down><end>",
        "<bs><bs><bs><bs><wait>",
        "autoinstall ds=nocloud-net\\;s=http://{{ .HTTPIP }}:{{ .HTTPPort }}/ ---<wait>",
        "<f10><wait>"
    ]
    boot = "c"
    boot_wait = "5s"

  disks {
    disk_size         = var.vm_disk_size
    storage_pool      = var.vm_disk_datastore
    type              = "scsi"
    format            = var.vm_disk_format
  }

  network_adapters {
    bridge = var.vm_bridge
    model  = "virtio"
  }

  efi_config {
    efi_storage_pool  = var.vm_efi_datastore
    efi_type          = "4m"
  }

  boot_iso {
    iso_file = var.iso_location
  }

}

build {
  sources = ["source.proxmox-iso.ubuntu-cloudinit"]
}
