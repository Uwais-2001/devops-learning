resource "aws_instance" "web" {
  ami                         = var.instance_ami
  instance_type               = var.instance_type
  vpc_security_group_ids      = [aws_security_group.web_sg.id]
  associate_public_ip_address = true
  subnet_id                   = var.subnet_id
  user_data                   = file("user-data.sh")


  tags = {
    Name = "Wordpress EC2"
  }
}

resource "aws_security_group" "web_sg" {
  name        = "web_sg"
  description = "allow http access to wordpress"
  vpc_id      = var.vpc_id

  tags = {
    Name = "web_sg"
  }

}

resource "aws_vpc_security_group_ingress_rule" "allow_http_ipv4" {
  security_group_id = aws_security_group.web_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}


resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.web_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1"
}
