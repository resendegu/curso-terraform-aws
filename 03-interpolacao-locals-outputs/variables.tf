variable "aws_region" {
  type = string
  description = "Região da AWS"
  default = "us-east-1"
}

variable "environment" {
  type = string
  description = "Ambiente"
  default = "dev"
}