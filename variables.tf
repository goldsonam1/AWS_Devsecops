variable "username" {
  type        = list(any)
  description = "Platform Admins"
}

variable "groupname" {
  type = list(any)
}

variable "ami_val" {
type= string
}

variable "inst_typ" {
type=string
}