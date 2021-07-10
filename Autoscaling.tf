resource "aws_launch_configuration" "weekend" {
  name_prefix   = "weekend"
  image_id      = "ami-0747bdcabd34c712a"
  instance_type = "t2.micro"

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "test" {
  name                      = "test1"
  max_size                  = 5
  min_size                  = 2
  health_check_grace_period = 300
  health_check_type         = "ELB"
  desired_capacity          = 4
  force_delete              = true
  launch_configuration = "${aws_launch_configuration.weekend.name}"
  vpc_zone_identifier  = ["${aws_subnet.public.id}", "${aws_subnet.public.id}"]

}
