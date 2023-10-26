# Definition of a variable for the EC2 instance name
variable "instance_name" {
  # Variable description explaining its purpose
  description = "Name of the EC2 instance"

  # Expected data type for the variable (in this case, a string)
  type        = string

  # Default value in case no value is specified when using Terraform
  default     = "simple_app_java"
}
