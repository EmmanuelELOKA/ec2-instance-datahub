module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name                        = "DataGov_DataHub"
  ami                         = "ami-08df646e18b182346"
  instance_type               = "t4g.large"
  key_name                    = var.key_name
  monitoring                  = true
  associate_public_ip_address = true
  availability_zone           = var.availability_zone
  vpc_security_group_ids      = ["${var.security_group_id}"]
  subnet_id                   = var.subnet_id
  ebs_block_device = [ {
   device_name = "/dev/xvda"
   volume_size = 50
   volume_type = "gp2"
} ]
  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
