# DanTheServerMan - HashiCorp Packer Scripts

(This README is not yet completed)

This is the repository for any and all HashiCorp Packer projects associated with dantheserverman.com, or my homelab. Therefore, the scripts will be more tailored towards that use case. 

## **ProxMox**
This Packer implementation uses the API and a dedicated user. The variable 'pmx_user_api_token' is not defined in a file, as I used an enviroment variable to avoid writing a token to a plaintext file. 

### **Ubuntu**
#### Provisioning 

#### Scripts
**ubuntu.pkr.hcl** - This will create a VM template using a Ubuntu ISO, installs the OS, configures any of your cloud-init/user-data configuration, tests SSH connectivity post-install, then converts it to a template. 


### **Alma**
#### Provisioning 

#### Scripts
**alma.pkr.hcl** - This will create a VM template using a alma ISO, installs the OS, configures any of your kickstart configuration, tests SSH connectivity post-install, then converts it to a template. 
