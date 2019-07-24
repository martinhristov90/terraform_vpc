variable "aws_region" {
  default = "us-east-1"
}

variable "ami" {
  type = "map"
  default = {
    us-east-1 = "ami-0cfee17793b08a293"
  }
}

variable "ec2_user" {
  default = "ubuntu"
}

variable "private_key_path" {
  default = "PATH_TO_PRIVATE_KEY"
}

variable "public_key_path" {
  default = "PATH_TO_PUBLIC_KEY"
}



