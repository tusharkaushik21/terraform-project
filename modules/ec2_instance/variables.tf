variable "ami_value" {
    description = "value for the ami"
}

variable "instance_type_value" {
    description = "value for instance_type"
}

variable "subnet_id_value" {
    description = "value for the subnet_id"
}

variable "key_name" {
  type    = string
  default = null
}
variable "root_volume_size" {
  type    = number
  default = 8
}