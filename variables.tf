variable "prefix" {
  default = "first"
  description = "The prefix to use for all resources"
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