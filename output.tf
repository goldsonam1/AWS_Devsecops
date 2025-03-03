output "pub_ip" {
value=aws_instance.my-instance-from-terraform.public_ip
}

output "pvt_ip" {
value=aws_instance.my-instance-from-terraform.private_ip
}