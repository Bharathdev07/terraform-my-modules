resource "aws_instance" "prod" {
    count = 2
    ami = var.ami
    instance_type = var.instance_type[count.index]
    key_name = var.key_name
    user_data = count.index == 1 ? file("${path.module}/awscli.sh") : ""
    iam_instance_profile = count.index == 1 ? var.instance_profile : null
    tags = {
        Name = "prod-${count.index}"
    }
}