variable "ami" {
    description = "The AMI to use"
     default = "ami-053b12d3152c0cc71"
  
}
variable "instance_type" {
    description = "The type of instance to launch"
    type = list(string)
    default = ["t2.micro","t2.medium"]
}
variable "key_name" {
    description = "The key name to use"
    default = "all"
}
variable "subnet_ids" {
    description = "The subnet IDs"
    type = list(string)
    default = []
  
}
variable "security_group_id" {
    description = "The security group ID"
    type = string
    default = ""
  
}
variable "instance_profile" {
    description = "The instance profile"
    type = string
    default = ""
  
}
variable "public_subnet_id" {
     description = "The public subnet ID"
        type = string
        default = ""
  
}
variable "private_subnet_id" {
     description = "The private subnet ID"
       type= string 
         default = ""
}