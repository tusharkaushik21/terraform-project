provider "aws" {
    region = "us-east-1"
}


resource "aws_key_pair" "example" {
  key_name   = "deployer-key"
  public_key = file("C:/Users/Tushar Kaushik/.ssh/id_rsa.pub")
}

module "ec2_group" {
  source              = "./modules/ec2_instance"
  ami_value           = "ami-0c398cb65a93047f2"
  instance_type_value = "t2.medium"
  subnet_id_value     = "subnet-06f8972d7a9a9428b"
  key_name            = aws_key_pair.example.key_name
  root_volume_size    = 25
}
resource "aws_instance" "myin" {
instance_type = "t2.medium"
ami = "ami-0c398cb65a93047f2"
launch_template {
  id = "lt-00e111d895be84204"
}
}