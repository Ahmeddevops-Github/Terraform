# HCL (HashiCorp Configuration Language) 

resource "aws_instance" "us-east-1-Terraform-Bastion-Terraform_Instance" {
  key_name      = "Terraform-Bastion-SSH-Key_name"
  ami           = "ami-0947d2ba12ee1ff75"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-Bastion-Terraform_EC2"
  }

  # List
  security_groups = ["${ aws_security_group.Terraform-Bastion-Security_Group-Test.name }"]
}
