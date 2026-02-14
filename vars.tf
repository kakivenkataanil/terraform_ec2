variable "ami" {
  type    = string
  default = "ami-0c1fe732b5494dc14"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "common_tags" {
  type = map(any)
  default = {
    Terraform   = "true"
    Automation  = "true"
    Project     = "garuda"
    Environment = "dev"
  }
}


variable "vpc_tags" {
  type = map(any)
  default = {
    Name        = "garuda_vpc"
    description = "allow_ssh"
  }
}

variable "ec2_tags" {
  type = map(any)
  default = {
    Name        = "frontend"
    description = "frontend"
  }
}

variable "sg_tags" {
  type = map(any)
  default = {
    Name        = "sg_frontend"
    description = "sg_frontend"
  }
}

variable "sg_name" {
  default = "allow-ssh"
}

variable "to_port" {
  type    = number
  default = 22
}

variable "from_port" {
  type    = number
  default = 22
}

variable "ingress_cidr" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}


variable "sg_description" {
  default = "Allow ssh port to connect"
}

variable "protocol" {
  default = "tcp"
}
