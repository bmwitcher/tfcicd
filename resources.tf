
resource "aws_key_pair" "tf-demo" {
  key_name   = "tf-demo"
  public_key = var.public_key
}



resource "aws_instance" "myec2" {
ami = "ami-09d95fab7fff3776c"
#ami IS REGION SPECIFIC - please check which region you are in if you receive an error
instance_type = var.instance_type
key_name = "tf-demo"
user_data = <<EOF
	#! /bin/bash 
    yum update -y 
    yum install httpd -y 
    service httpd start 
    chkconfig httpd on
EOF
}


resource "aws_eip" "elastictest" {
  vpc      = true
}


resource "aws_eip_association" "eip_assoc" {
  instance_id = aws_instance.myec2.id
  allocation_id = aws_eip.elastictest.id
  #ec2 has to be created prior to assigning an elastic ip
  }


  resource "aws_security_group" "tfsg" {
  name        = var.prefix

  tags = {
        Name = var.prefix
  }
  description = var.prefix 


  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["71.63.125.93/32"]
    # cidr_blocks = [aws_eip.elastictest.public_ip/32] open this range up to allow more specific or general ip address
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["71.63.125.93/32"]
   #open this range up to allow more specific or general ip address
  # Can be specified multiple times for each ingress rule. Each ingress block supports fields documented below.
  
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  }

  resource "aws_network_interface_sg_attachment" "sg_attachment" {
  security_group_id    = aws_security_group.tfsg.id
  network_interface_id = aws_instance.myec2.primary_network_interface_id
}

