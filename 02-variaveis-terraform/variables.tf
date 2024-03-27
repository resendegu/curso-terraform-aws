variable "aws_region" {
  type = string
  description = "Região da AWS"
  default = "us-east-1"
}

variable "instance_ami" {
  type = string
  description = "AMI da instância"
  default = "ami-080e1f13689e07408"
}

variable instance_tags {
  type = map(string)
  description = "Tags da instância"
  default = {
    Name = "Ubuntu"
  }
}

variable "instance_type" {
  type = string
  description = "Tipo da instância"
  default = "t2.micro"
}