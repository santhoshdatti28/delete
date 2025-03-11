locals{
    ami_id = data.aws_ami.joindevops.id
    instance_type= "t2.medium"
    name= "${var.project}-${var.environment}-${var.component}"
}