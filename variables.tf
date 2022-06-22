variable "region" {
  description = "my region value"
  type        = string
  default     = ""
}

variable "acc-key" {
  description = "user key"
  type        = string
  default     = ""
}

variable "sec-key" {
  description = "use the secret key"
  type        = string
  default     = ""
}
variable "key_name" {
  description = "instance access key"
  type        = string
  default     = "datahub-keypair"
}
variable "availability_zone" {
  description = "AZ to start the instance in"
  type        = string
  default     = ""
}

variable "vpc" {
  description = "vpc id"
  type        = string
  default     = "vpc-27639840"

}

variable "subnet_id" {
  description = "subnet id of the instance"
  type        = string
  default     = "subnet-2e492104"
}

variable "security_group_id" {
  description = "security group id of the instance"
  type        = string
  default     = "sg-b80c86c3"
}