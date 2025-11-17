resource "aws_instance" "name" { 
    instance_type = var.instance_type
     ami = var.ami_id
     user_data = file("test.sh")  # calling test.sh from current directory by using file fucntion 
     tags = {
       Name = "dev"
     }


  
}