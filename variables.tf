variable "ami_id"{
    default= "ami-09c813fb71547fc4f"
}

variable "instance_type"{
    default= "t3.micro"
}

variable "instance_name"{
    default= "test"
}

variable "from_port"{
    default = 22
}

variable "to_port"{
    default= 22
}

variable "cidr_blocks"{
    default = ["0.0.0.0/0"]
}

variable "sg_tags"{
    default= "allow_all"

}