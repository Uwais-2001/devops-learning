variable "region" {
  type    = string
  default = "eu-west-2"
}
variable "instance_ami" {
  type = string
}
variable "instance_type" {
  type    = string
  default = "t2.micro"
}
variable "vpc_id" {
  type = string
}

variable "subnet_id" {
  type = string
}





