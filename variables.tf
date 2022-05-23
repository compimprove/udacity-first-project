variable "prefix" {
  default = "first"
  description = "The prefix to use for all resources"
}

variable "application_port" {
  description = "The port that web server run on"
  default = 80
}

variable "location" {
 description = "The Azure region"
 default = "westeurope"
}

variable "username" {
 default = "dinhnt"
}

variable "password" {
 default = "C1343`dfg97"
}

variable "vm-count" {
  default = 2
}