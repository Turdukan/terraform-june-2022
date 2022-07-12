resource "aws_instance" "main" {
    ami = var.ami
    instance_type = var.instance_type
    vpc_security_group_ids =  [ aws_security_group.main.id ]
    key_name =  var.key_name 
    tags = {
        Name = var.env
    }
}

# Reference to Input Variables: 
# var.name
# { expects maps (key=value)} [expects list]

# highlihght +control +d = to make changes all at once
#  highlight + control + / = Comment and uncomment
# control + F = find string

# Reference to resource: 
# 1. aws_security_group = first label
# 2. main = second label
# 3. id = attribute
# inside "" is string, hard coded value, static value (nonchangeable)
# reference = dynamic (changeable). In terraform, dynamic values do not use ""
