provider "aws" {
  region = "us-east-1"
}

resource "aws_security_group" "allow_all" {
  name        = "foo"
  description = "inbound traffic"
}

data "aws_availability_zones" "all" {

}

output "azs" {
  value = "${data.aws_availability_zones.all.names}"
}
