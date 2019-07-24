variable "aws_region" {
  default = "us-east-1"
}

variable "ami" {
  type = map(string)
  default = {
    us-east-1 = "ami-0cfee17793b08a293"
  }
}

variable "ec2_user" {
  default = "ubuntu"
}

variable "private_key" {
  default = ""
}

variable "public_key" {
  default = ""
}

