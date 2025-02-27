variable "vpc_name" {
  description = "value of the vpc name"
  type = string
  default = "tf-vpc"
}
variable "cidr_range" {
  description = "value of the CIDR range"
  type = string
    default = "10.0.0.0/16"
}
variable "public_subnets" {
  description = "value of the public subnets"
  type = list(string)
  default = [ "10.0.0.0/24","10.0.1.0/24" ]
  
}
variable "private_subnets" {
  description = "value of the private subnets"
  type = list(string)
  default = ["10.0.2.0/24","10.0.3.0/24"]
}
variable "azs" {
  description = "value of the availability zones"
  type = list(string)
  default = ["ap-south-1a","ap-south-1b"]
}
