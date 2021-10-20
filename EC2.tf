
resource "aws_instance" "weekend" {

  ami           = "ami-0747bdcabd34c712a"
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.public.id}"


  tags = {
    Name = "weekend"
  }
}


resource "aws_instance" "weekend1" {

  ami           = "ami-0747bdcabd34c712a"
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.public.id}"


  tags = {
    Name = "weekend1"
  }
}
