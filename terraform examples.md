## Terraform Configuration to Attach Elastic IP to EC2 Instance using Terraform

```
provider "aws" {
  profile = "default"
  region  = "ap-south-1"
}


#Variable Declarations
variable "ami-mumbai" {
  type = string
  default = "ami-01216e7612243e0ef" #AMI for ap-south-1
}

variable "key-name" {
  type = string
  default = "MyDemoEC2eyPair"
}

#Create EC2 instance
resource "aws_instance" "demo-instance" {
  ami = var.ami-mumbai
  instance_type = "t2.micro"
  key_name = var.key-name
}

#Create an Elastic IP
resource "aws_eip" "demo-eip" {
  vpc = true
}

#Associate EIP with EC2 Instance
resource "aws_eip_association" "demo-eip-association" {
  instance_id   = aws_instance.demo-instance.id
  allocation_id = aws_eip.demo-eip.id
}

output "elastic_ip" {
  value = aws_eip.demo-eip.public_ip
}
```

https://medium.com/geekculture/how-to-deploy-a-three-tier-architecture-in-aws-using-terraform-e5dfd7b6d38f

https://spacelift.io/blog/terraform-tools