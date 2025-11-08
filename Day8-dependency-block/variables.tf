variable "ami_id" {
  description = "for passing ami values"
  default = ""
  type = string 
}

variable "instance_type" {
    description = "passing the instance type"
    default = "t2.micro"
    type = string
  
}