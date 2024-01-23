locals {
  ec2_name = "${var.project_name}-${var.environment}"
  database_subnet_id = element(split("," , data.aws_ssm_parameter.database_subnet_ids.value), 0 )
  private_subnet_id = element(split("," , data.aws_ssm_parameter.private_subnet_ids.value), 0 )
  public_subnet_id = element(split("," , data.aws_ssm_parameter.public_subnet_ids.value), 0 )
}

#split function do convert the string in to list we have stored as sting in ssm parameter store

#element function get the first element of the list that is us-east-la public subnet



# locals {
#    database_subnet_ids = element(split("," , data.aws_ssm_parameter.database_subnet_ids.value), 0 )
# #    private_subnet_ids = element(split("," , data.aws_ssm_parameter.private_subnet_ids.value), 0 )
#     # instance_type= var.instance_type== "mongodb" || var.instance_type == "shipping"|| var.instance_type== "mysql" ? "t3.small" : "t2.micro"
# }