resource "aws_instance" "bastion" {
  ami           = "ami-005fc0f236362e99f"
  instance_type = "t2.micro"
  key_name      = "monty"   
  tags = {
    Name = "Bastion Instance"
  }

  security_groups = [aws_security_group.bastion_sg.name]
}

resource "aws_instance" "jenkins" {
  ami           = "ami-005fc0f236362e99f" 
  instance_type = "t2.micro"
  key_name      = "monty"   
  tags = {
    Name = "Jenkins Instance"
  }

  security_groups = [aws_security_group.private_instances_sg.name]
}

resource "aws_instance" "app" {
  ami           = "ami-005fc0f236362e99f" 
  instance_type = "t2.micro"
  key_name      = "monty" 
  tags = {
    Name = "App Instance"
  }

  security_groups = [aws_security_group.private_instances_sg.name]
}
