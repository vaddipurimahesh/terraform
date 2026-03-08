resource "aws_instance" "terraform" {
        ami = data.aws_ami.joindevops.id
        instance_type = "t3.micro"
        vpc_security_group_ids = ["aws_security_group.allow_tls.id"]
    
    tags ={
        name = "terraform"
        Project = "roboshop"
    }
}

resource "aws_security_group" "allow_tls"{
        name = "allow-all-terraform"
        description = "Allow TLS inbound and outbound traffic"
    
    ingress {
        from_port = 0
        to_port = 0
        cidr_blocks = ["0.0.0.0/0"]
        protocol = "-1"
    }
    egress {
        from_port = 0
        to_port = 0
        cidr_blocks = ["0.0.0.0/0"]
        protocol = "-1"
    }

    tags = {
        name = "allow-all-terraform"
    }
}
