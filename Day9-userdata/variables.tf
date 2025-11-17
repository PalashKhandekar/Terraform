variable "ami_id" {
  description = "passing ami id to ec2"
  default = "ami-07860a2d7eb515d9a"
  type= string
}

variable "instance_type" {
  description = "Passing instance type "
  default = "t3.micro"
  type= string
}