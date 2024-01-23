variable "project_name" {
  default = "roboshop"
}

variable "environment" {
  default = "dev"
}

variable "common_tags" {
  default = {
    Project = "roboshop"
    Environment = "dev"
    Terraform = "true"
  }
}


variable "zone_name" {
  default = "arundev.online"
}
# variable "instance_type" {
#     default = "t3.small"
  
# }
# variable "instance_type" {
#   type = list
#   default = ["mongodb","catalogue","redis","web","user", "cart","rabbitmq","mysql","shipping","payment","dispatch"]
# }
# variable "ec2_name" {
#   default = "mongodb"
# }

