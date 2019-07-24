resource "aws_instance" "web" {
  ami       = "${lookup(var.ami, var.aws_region, )}"
  subnet_id = aws_subnet.main.id

  vpc_security_group_ids = ["${aws_security_group.ssh_http_allowed.id}"]

  key_name = aws_key_pair.deployer.id

  instance_type = "t2.micro"

  connection {
    host        = "${aws_instance.web.public_ip}"
    user        = "${var.ec2_user}"
    private_key = "${file("${var.private_key_path}")}"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo amazon-linux-extras enable nginx1.12",
      "sudo apt-get -y install nginx",
      "sudo systemctl start nginx",
    ]
  }

  tags = {
    Name = "HelloWorld_ec2"
  }
}

resource "aws_key_pair" "deployer" {
  key_name   = "aws_key_pair"
  public_key = "${file(var.public_key_path)}"
}