variable "prefix" {
  default     = "udacity-first"
  description = "The prefix to use for all resources"
}

variable "application_port" {
  description = "The port that web server run on"
  default     = 80
}

variable "username" {
  description = "The username of virtual machine"
  default     = "test"
}

variable "password" {
  description = "The password of virtual machine"
  default     = "123456"
}

variable "vm-count" {
  description = "The amount of virtual machines you want to create"
  default = 2
}
