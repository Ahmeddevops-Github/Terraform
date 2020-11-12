resource "aws_security_group" "Terraform-Bastion-Security_Group-Test" {
  tags = {
    Name = "Terraform-Bastion-Security_Group-Test"
  }

  ingress {
    protocol    = -1
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    protocol    = -1
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}
