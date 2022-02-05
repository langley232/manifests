variable "AWS_REGION" {    
    default = "eu-west-2"
}

variable "owner" {
  description = "Configuration owner"
  type        = string
}

variable "instance_ami" {
  description = "ID of the AMI used"
  type        = string
  default     = "ami-08d7b6bd00bf0735f"
}    
  
  
