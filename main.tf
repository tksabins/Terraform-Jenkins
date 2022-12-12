provider "aws" {
    region = "us-east-1"  
}

resource "aws_instance" "foo" {
  ami           = "ami-0574da719dca65348" # us-west-2
  instance_type = "t2.micro"

  tags = {
      Name = "TF-Instance1"
      Env = "dev"
  }
}
