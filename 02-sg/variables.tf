variable "project_name" {
  default = "roboshop"
}
variable "environment" {
  default = "dev"
}

# variable "sg_description" {
#   default = "SG FOR MONGODB"
# }

variable "common_tags" {
  default = {
    Project = "roboshop"
    Environment = "dev"
    Terraform = "true"
  }
}

variable "sg_tags" {
  default = {}
}

# variable "sg_name" {

# }


variable "mongodb_sg_ingress_rules" {
  default = [
    {
        description = "allow port 80"
        from_port = 80
        to_port = 80
        protocol ="tcp"
        cidr_blocks = ["0.0.0.0/0"]
    },
       {
        description = "allow port 443"
        from_port = 443
        to_port = 443
        protocol ="tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}