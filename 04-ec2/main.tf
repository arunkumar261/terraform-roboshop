module "mongodb" {
   source = "terraform-aws-modules/ec2-instance/aws"
#     source =  "C:/DevOpswithAWS/repos/terraform-ec2_instance"
ami =data.aws_ami.centos8.id
  name= "${local.ec2_name}-mongodb"
#   instance_type = var.instance_type
   instance_type = "t3.small"
vpc_security_group_ids = [data.aws_ssm_parameter.mongodb_sg_id.value]

#we need to give databasesubnet id because it is mongodb
subnet_id = local.database_subnet_id


  tags  = merge(
    var.common_tags,
    {
        Component = "mongodb"
    },
    {
        Name = "${local.ec2_name}-mongodb"
    }
  )
}


# module "mongodb" {
  
#      source =  "../../terraform-ec2_instance"
#   project_name= var.project_name
#   environment = var.environment
#   instance_type = var.instance_type

# vpc_security_group_ids = [data.aws_ssm_parameter.mongodb_sg_id.value]

# #we need to give databasesubnet id because it is mongodb
# subnet_id = local.database_subnet_ids

# }


# module "mongodb" {
  
#      source =  "../../terraform-ec2_instance"
#   project_name= var.project_name
#   environment = var.environment
#    instance_type = var.instance_type

# vpc_security_group_ids = [data.aws_ssm_parameter.mongodb_sg_id.value]

# #we need to give databasesubnet id because it is mongodb
# subnet_id = local.database_subnet_ids

# }
# module "catalogue" {
# #   count = length(var.instance_type)
#      source =  "../../terraform-ec2_instance"
#   project_name= var.project_name
#   environment = var.environment
#   instance_type = var.instance_type
#   ec2_name = var.ec2_name
# vpc_security_group_ids = [data.aws_ssm_parameter.catalogue_sg_id.value]

# #we need to give databasesubnet id because it is mongodb
# subnet_id = local.private_subnet_ids

# }


module "redis" {
   source = "terraform-aws-modules/ec2-instance/aws"
#     source =  "C:/DevOpswithAWS/repos/terraform-ec2_instance"
ami =data.aws_ami.centos8.id
  name= "${local.ec2_name}-redis"
  instance_type = "t2.micro"

vpc_security_group_ids = [data.aws_ssm_parameter.redis_sg_id.value]

#we need to give databasesubnet id because it is mongodb
subnet_id = local.database_subnet_id


  tags  = merge(
    var.common_tags,
    {
        Component = "redis"
    },
    {
        Name = "${local.ec2_name}-redis"
    }
  )
}


module "mysql" {
   source = "terraform-aws-modules/ec2-instance/aws"
#     source =  "C:/DevOpswithAWS/repos/terraform-ec2_instance"
ami =data.aws_ami.centos8.id
  name= "${local.ec2_name}-mysql"
  instance_type = "t3.small"

vpc_security_group_ids = [data.aws_ssm_parameter.mysql_sg_id.value]

#we need to give databasesubnet id because it is mongodb
subnet_id = local.database_subnet_id


  tags  = merge(
    var.common_tags,
    {
        Component = "mysql"
    },
    {
        Name = "${local.ec2_name}-mysql"
    }
  )
}


module "rabbitmq" {
   source = "terraform-aws-modules/ec2-instance/aws"
#     source =  "C:/DevOpswithAWS/repos/terraform-ec2_instance"
ami =data.aws_ami.centos8.id
  name= "${local.ec2_name}-rabbitmq"
  instance_type = "t2.micro"

vpc_security_group_ids = [data.aws_ssm_parameter.rabbitmq_sg_id.value]

#we need to give databasesubnet id because it is mongodb
subnet_id = local.database_subnet_id


  tags  = merge(
    var.common_tags,
    {
        Component = "rabbitmq"
    },
    {
        Name = "${local.ec2_name}-rabbitmq"
    }
  )
}



module "catalogue" {
   source = "terraform-aws-modules/ec2-instance/aws"
#     source =  "C:/DevOpswithAWS/repos/terraform-ec2_instance"
ami =data.aws_ami.centos8.id
  name= "${local.ec2_name}-catalogue"
  instance_type = "t2.micro"

vpc_security_group_ids = [data.aws_ssm_parameter.catalogue_sg_id.value]

#we need to give databasesubnet id because it is mongodb
subnet_id = local.private_subnet_id


  tags  = merge(
    var.common_tags,
    {
        Component = "catalogue"
    },
    {
        Name = "${local.ec2_name}-catalogue"
    }
  )
}


module "user" {
  source = "terraform-aws-modules/ec2-instance/aws"
  ami =data.aws_ami.centos8.id  
  name= "${local.ec2_name}-user"
  instance_type = "t2.micro"
  vpc_security_group_ids = [data.aws_ssm_parameter.user_sg_id.value]
  subnet_id = local.private_subnet_id
  tags  = merge(
    var.common_tags,
    {
        Component = "user"
    },
    {
        Name = "${local.ec2_name}-user"
    }
  )
}

module "cart" {
  source = "terraform-aws-modules/ec2-instance/aws"
  ami =data.aws_ami.centos8.id  
  name= "${local.ec2_name}-cart"
  instance_type = "t2.micro"
  vpc_security_group_ids = [data.aws_ssm_parameter.cart_sg_id.value]
  subnet_id = local.private_subnet_id
  tags  = merge(
    var.common_tags,
    {
        Component = "cart"
    },
    {
        Name = "${local.ec2_name}-cart"
    }
  )
}

module "payment" {
  source = "terraform-aws-modules/ec2-instance/aws"
  ami =data.aws_ami.centos8.id  
  name= "${local.ec2_name}-payment"
  instance_type = "t2.micro"
  vpc_security_group_ids = [data.aws_ssm_parameter.payment_sg_id.value]
  subnet_id = local.private_subnet_id
  tags  = merge(
    var.common_tags,
    {
        Component = "payment"
    },
    {
        Name = "${local.ec2_name}-payment"
    }
  )
}

module "shipping" {
  source = "terraform-aws-modules/ec2-instance/aws"
  ami =data.aws_ami.centos8.id  
  name= "${local.ec2_name}-shipping"
  instance_type = "t3.small"
  vpc_security_group_ids = [data.aws_ssm_parameter.shipping_sg_id.value]
  subnet_id = local.private_subnet_id
  tags  = merge(
    var.common_tags,
    {
        Component = "shipping"
    },
    {
        Name = "${local.ec2_name}-shipping"
    }
  )
}


module "web" {
  source = "terraform-aws-modules/ec2-instance/aws"
  ami =data.aws_ami.centos8.id  
  name= "${local.ec2_name}-web"
  instance_type = "t2.micro"
  vpc_security_group_ids = [data.aws_ssm_parameter.web_sg_id.value]
  subnet_id = local.public_subnet_id
  tags  = merge(
    var.common_tags,
    {
        Component = "web"
    },
    {
        Name = "${local.ec2_name}-web"
    }
  )
}



#for records creation

module "records" {
  source = "terraform-aws-modules/route53/aws//modules/records"
  zone_name = var.zone_name

  records = [
    {
        name = "mongodb"
        type = "A"
        ttl = 1
        records = [
            "${module.mongodb.private_ip}" 
        ]
    },
     {
        name = "redis"
        type = "A"
        ttl = 1
        records = [
            "${module.redis.private_ip}" 
        ]
    },
     {
        name = "mysql"
        type = "A"
        ttl = 1
        records = [
            "${module.mysql.private_ip}" 
        ]
    },
     {
        name = "rabbitmq"
        type = "A"
        ttl = 1
        records = [
            "${module.rabbitmq.private_ip}" 
        ]
    },
     {
        name = "catalogue"
        type = "A"
        ttl = 1
        records = [
            "${module.catalogue.private_ip}" 
        ]
    },
     {
        name = "user"
        type = "A"
        ttl = 1
        records = [
            "${module.user.private_ip}" 
        ]
    },
     {
        name = "cart"
        type = "A"
        ttl = 1
        records = [
            "${module.cart.private_ip}" 
        ]
    },
     {
        name = "payment"
        type = "A"
        ttl = 1
        records = [
            "${module.payment.private_ip}" 
        ]
    },
     {
        name = "shipping"
        type = "A"
        ttl = 1
        records = [
            "${module.shipping.private_ip}" 
        ]
    },
     {
        name = "web"
        type = "A"
        ttl = 1
        records = [
            "${module.web.public_ip}" 
        ]
    },
  ]
}