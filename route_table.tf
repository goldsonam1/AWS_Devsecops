resource "aws_default_route_table" "my-rt-table" {
  default_route_table_id  = aws_vpc.my_vpc_terraform.default_route_table_id


  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
 }