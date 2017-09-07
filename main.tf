provider "aws" {
  region = "us-east-1"
}

variable "my_var" {
  default = "default value"
}

resource "aws_security_group" "allow_all" {
  vpc_id = "vpc-d7adefae"
  name        = "tfe-testing-sg"
  description = "Testing TFE"
  tags {
    Name = "foo-${uuid()}"
  }
}

data "aws_availability_zones" "all" {

}

output "myvar" {
  value = "${var.my_var}"
}

output "azs" {
  value = "${data.aws_availability_zones.all.names}"
}
