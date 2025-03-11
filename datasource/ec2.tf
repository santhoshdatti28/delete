resource "aws_instance" "this"{
    ami = data.aws_ami.joindevops.id
    vpc_security_group_ids= [aws_security_group.demo_sg.id]
    instance_type= "t2.micro"
    tags= {
        Name= "test"
    }
}

resource "aws_security_group" "demo_sg"{
    name = "all"
    description= "allow both inbound and outbound traffic"
    ingress{
        from_port = 22
        to_port= 22
        protocol = "tcp"
        cidr_blocks= ["0.0.0.0/0"]
    }
    egress{
        from_port= 0
        to_port = 0
        protocol= "-1"
        cidr_blocks= ["0.0.0.0/0"]
    }
    tags= {
        Name= "allow-all"
    }
}
