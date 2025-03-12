variable "instances"{
    type= map
    default= {
        mysql = "t3.small"
        frontend= "t3.micro"
        backend= "t3.micro"
    }
}

variable "zone_id"{
    default= "Z04263705DOX3TZF5K54"
}

variable "domain_name"{
    default= "santhoshdatti.online"
}