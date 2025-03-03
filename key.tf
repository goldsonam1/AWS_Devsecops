resource "tls_private_key" "mykey" {
  algorithm = "RSA"
   rsa_bits  = 4096
}

resource "local_file" "mypvt_key" {
filename="mypvtkey.pem"
content=tls_private_key.mykey.private_key_pem
}

resource "aws_key_pair" "mypublic_key" {
  key_name   = "mypublic_key"
  public_key = tls_private_key.mykey.public_key_openssh
  }