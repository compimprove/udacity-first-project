# Azure Infrastructure Operations Project: Deploying a scalable IaaS web server in Azure

### Introduction

In this project, we will deploy a scalable web server in azure using Packer and Terraform.
Our web server will contain `n` virtual machines as we config, a load balancer so if one virtual machine get overload, the requests will be directed to other virtual machines.

### Getting Started

Before you build this server, you will need to clone this repository for starting.
### Dependencies

In order to build this server, you will need the following tools and account:

1. Create an [Azure Account](https://portal.azure.com) 
2. Install the [Azure command line interface](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest)
3. Install [Packer](https://www.packer.io/downloads)
4. Install [Terraform](https://www.terraform.io/downloads.html)

### Instructions

**Config your environment**
1. Login to azure using the command 
```bash
az login
```

**Apply tagging policy that require tags for every resources created**

1. Create policy definition `az policy definition create --name tagging-policy --rules tagging-policy.rule.json`
2. Assign the created policy definition `az policy assignment create --policy tagging-policy`
3. Verify it by running the command `az policy assignment list`

**Using Packer for building the web server image**
1. Update variables in `server.json` to match your credential, expecially the `subscription_id` to match your subscription in azure account
2. Build image using the command `packer build server.json`
3. Verify the image has created `az image list`

**Using Terraform to build the web server with load balancer**
1. Initialize Terraform and it's dependencies `terraform init`
2. Customize `vars.tf` for your need
- The `prefix` is prefix name of all components created.
- The `application_port` is the port of the public ip, you should leave it as default of port 80.
- The `username` and `password` is the credential of all virtual machines created
- The `vm-count` define how many virtual machines we will create.
3. Run `terraform plan` to verify what will be created.
4. Run `terraform apply` to build the web server and load balancer

### Output

If terraform build successfully, it will output load balancer public ip like `public_ip_address:{Your public ip address}`. You could use this ip to access your web server in the browser.
