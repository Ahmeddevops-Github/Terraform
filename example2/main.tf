# HCL (HashiCorp Configuration Language) 

provider "aws" {
  region = "us-east-1"
}

resource "aws_key_pair" "us-east-1-Terraform-Bastion-SSH-Key" {
  key_name   = "Terraform-Bastion-SSH-Key_name"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC4vH/MgxlydRrGxWEXd7h0E/SUFOg5VC12e+BUIBAtFUeGrJasLXUCXl61O8ASShXJoTxPHOe0KKwB8SGaoOX+nSWj2/2Q/4UpMNm9dLDBoaXw1zE1EevbWC7GaG0t2SdsvkauLmtFpr4zOnnEBMT/99V90XKpxQzvRCH/pTbSmP7lM1ZjDBprhwnHoFa3lgkNDaAZtLztYxcz6JpKg53sjttRQXym1q6O+dJM4g/PxEqyz647aQnAN1QKg3AkhXkzOtbm1oWN2986D2miRhBBNge9qm6NNFA6bBBgIw3BZOpw71racwF8NbDilx4qApl68eeUfOCJ5/PAU0kxpKY9 ec2-user@Terraform-Bastion-EC2"
}

resource "aws_instance" "us-east-1-Terraform-Bastion-Terraform_Instance" {
  key_name      = "Terraform-Bastion-SSH-Key_name"
  ami           = "ami-0947d2ba12ee1ff75"
  instance_type = "t2.micro"
}
