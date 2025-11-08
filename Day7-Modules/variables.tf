variable "ami_id" {
    description = "passing ami image to ec2"
    default = ""
    type=string
  
}
variable "type" {
    description = "passing instance type to ec2"
    default = ""
    type=string
  
}