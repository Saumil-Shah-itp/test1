module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "saumil-jenkins"
  user_data = base64encode(file("${path.module}/jenkins.sh"))  
  ami                    = var.amiid
  instance_type          = "t2.micro"
#   key_name               = "user1"
#   monitoring             = true
#   vpc_security_group_ids = ["sg-12345678"]
  subnet_id              = var.subnet

  tags = {
    Name = "Saumil-test"
    Owner = "saumil.shah@intuitive.cloud"
  }
}
