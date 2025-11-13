variable "ami_id" {
  description = "for passing ami values"
  default = "ami-0157af9aea2eef346"
  type = string 
}

variable "instance_type" {
    description = "passing the instance type"
    default = "t2.micro"
    type = string
  
}