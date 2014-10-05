
variable "access_key" {}
variable "secret_key" {}

variable "instance_type" {
    default = "t2.medium"
} 

variable "region" {
    default = "us-east-1"
}

# Define the AMIs

variable "amis" {
    default = {
        eu-west-1 = "ami-f4b11183"
        us-east-1 = "ami-9aaa1cf2"
        us-west-2 = "ami-39501209"
    }
}

provider "aws" {
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
    region = "${var.region}"
}

