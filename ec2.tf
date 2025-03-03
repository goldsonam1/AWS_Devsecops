
resource "aws_vpc" "my_vpc_terraform" {
  cidr_block = "10.0.0.0/16"
  }

  resource "aws_subnet" "my_subnet_terraform" {
  vpc_id            = aws_vpc.my_vpc_terraform.id
  cidr_block        = "10.0.0.0/24"
}

resource "aws_instance" "my-instance-from-terraform" {
  ami           = var.ami_val
  instance_type = var.inst_typ
  associate_public_ip_address=true
  subnet_id=aws_subnet.my_subnet_terraform.id
  security_groups=[aws_security_group.allow_ssh.id]
  key_name=aws_key_pair.mypublic_key.id
}
