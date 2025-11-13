resource "aws_instance" "name" {
    instance_type = var.instance_type
    ami = var.ami_id
    tags={
        Name="My-terra-ec2"
    }
    depends_on = [ aws_s3_bucket.name]
  
}

resource "aws_s3_bucket" "name" {
    bucket="my-ttttterrra-bucket"
  
}