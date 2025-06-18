# ProxMox Host Information
# Export your user password as a "export pmx_user_api_token='TOKEN'"
pmx_node                 = "proxmox-host"
pmx_user                 = "terraform@pve!apitoken"
pmx_url                  = "https://192.168.1.101:8006/api2/json"

# VM ISO Information
iso_location             = "nfs-iso:iso/AlmaLinux-9.5-x86_64-boot.iso"
iso_http_directory       = "../bootstrap/"

# VM Hardware Information
vm_name                  = "packer-alma9-template"
vm_cpu_type              = "host"
vm_core                  = 4
vm_mem                   = 2048
vm_os_type               = "l26"
vm_disk_size             = "10G"
vm_disk_datastore        = "bastet-nfs-datastore"
vm_efi_datastore         = "bastet-nfs-datastore"
vm_bridge                = "vmbr0"
vm_bios                  = "ovmf"
vm_scsi_controller       = "virtio-scsi-single"

# VM Descriptors
vm_id                    = "1001"
vm_tags                  = "template"
vm_template_description  = "Created by Packer"

# VM SSH Information
vm_ssh_user              = "dantheserverman"
vm_ssh_private_key_file  = "/Users/dan/.ssh/pckr_id_ed25519"
vm_ssh_timeout           = "30m"

