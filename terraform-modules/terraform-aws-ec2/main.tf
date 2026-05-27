resource "aws_instance" "web" {
  count = length(var.subnet_ids)

  ami = var.ami
  instance_type = var.instance_type

  subnet_id = var.subnet_ids[count.index]

  tags = {
    Name = "${var.environment}-ec2-${count.index}"
  }
}