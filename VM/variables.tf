variable "environment" {
  type        = string
  description = "The environment for the resources"
  default     = "dev"
}


variable "storage_disk" {
  type        = number
  description = "The storage disk size of os"
  default     = 80
} 

variable "disk_termination" {
  type = bool
  description = "Delete the OS disk when the VM is deleted"
  default = true
  
}