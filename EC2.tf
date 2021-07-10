
resource "aws_instance" "weekend" {

  ami           = "ami-0747bdcabd34c712a"
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.public.id}"
  key_name = "${aws_key_pair.weekend7pm.id}"
  user_data = "${file("install_apache.sh")}"


  tags = {
    Name = "weekend"
  }
}

resource "aws_key_pair" "weekend7pm" {
  key_name   = "weekend"
  public_key = "${file("key/weekend.pub")}"
}

resource "aws_instance" "weekend1" {

  ami           = "ami-0747bdcabd34c712a"
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.public.id}"
  key_name = "${aws_key_pair.weekend7pm.id}"
  user_data = "${file("install_apache.sh")}"


  tags = {
    Name = "weekend1"
  }
}
