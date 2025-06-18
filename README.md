# DanTheServerMan - HashiCorp Packer Scripts

(This README is not yet completed)

This is the repository for any and all HashiCorp Packer projects associated with dantheserverman.com, or my homelab. Therefore, the scripts will be more tailored towards that use case. 

Please note that some of these scripts will call some Ansible playbooks, to auto expand disks, from my Ansible repo. You can either pull that repo or remove the Ansible call from the scripts.

## **ProxMox**
This Packer implementation uses the API and a dedicated user. The variable 'pmx_user_api_token' is not defined in a file, as I used an enviroment variable to avoid writing a token to a plaintext file. 

### **Ubuntu**
#### Provisioning 
**example-bootstrap** - Contains example config files for cloud-init. You should copy this directory and rename it ```bootstrap/```. Make sure you update the user-data configuration to match your needs. The meta-data file is intentionally blank, as its required by cloudinit.

**example-variables.auto.pkrvars.hcl** - Example Packer variables file. Copy it and rename it to just ```variables.auto.pkrvars.hcl```. This contains all the variables Packer needs to talk and use the infrastructure.

#### Scripts
**ubuntu.pkr.hcl** - This will create a VM template using a Ubuntu ISO, installs the OS, configures any of your cloud-init/user-data configuration, tests SSH connectivity post-install, then converts it to a template. 


### **Alma**
#### Provisioning 
**example-bootstrap** - Contains example config files for kickstart. You should copy this directory and rename it ```bootstrap/```. Make sure you update the ks.cfg configuration to match your needs. 

**example-variables.auto.pkrvars.hcl** - Example Packer variables file. Copy it and rename it to just ```variables.auto.pkrvars.hcl```. This contains all the variables Packer needs to talk and use the infrastructure.

#### Scripts
**alma.pkr.hcl** - This will create a VM template using a alma ISO, installs the OS, configures any of your kickstart configuration, tests SSH connectivity post-install, then converts it to a template. 
