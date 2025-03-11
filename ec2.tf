resource "aws_instance" "this"{
    ami = var.ami_id
    vpc_security_group_ids= [aws_security_group.demo_sg.id]
    instance_type= var.instance_type
    tags= {
        Name= var.instance_name
    }
}

resource "aws_security_group" "demo_sg"{
    name = "all"
    description= "allow both inbound and outbound traffic"
    ingress{
        from_port = var.from_port
        to_port= var.to_port
        protocol = "tcp"
        cidr_blocks= var.cidr_blocks
    }
    egress{
        from_port= 0
        to_port = 0
        protocol= "-1"
        cidr_blocks= ["0.0.0.0/0"]
    }
    tags= {
        Name= var.sg_tags
    }
}
