## Setup infrastructure with Terraform

Example how to create infrastructure on DigitalOcean cloud provider with Terraform

#### Install Terraform
```bash
wget https://releases.hashicorp.com/terraform/0.11.13/terraform_0.11.13_linux_amd64.zip
unzip terraform_0.11.13_linux_amd64.zip
sudo mv terraform /usr/local/bin/
sudo chown root:root /usr/local/bin/terraform
sudo chmod 755 /usr/local/bin/terraform
terraform --version
```

#### Initialize terraform project
```bash
terraform init
```

#### Run `terraform plan` - dry run
```bash
terraform plan -auto-approve -var-file=./.config/tf.properties
```

#### Run `terraform apply` - create resources
```bash
terraform apply -auto-approve -var-file=./.config/tf.properties
```

### Run `terraform destroy` - destroy all resources
```bash
terraform destroy -auto-approve -var-file=./.config/tf.properties
```
