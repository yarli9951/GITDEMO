resource "aws_vpc" "weekend" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "weekend"
  }
}

resource "aws_subnet" "public" {
  vpc_id     = "${aws_vpc.weekend.id}"
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "public"
  }
}


resource "aws_internet_gateway" "weekend" {
  vpc_id = "${aws_vpc.weekend.id}"

  tags = {
    Name = "weekend"
  }
}
