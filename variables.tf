variable "prefix" {
  description = "Prefix added to unique bucket name"
  default     = "stenio"
}

variable "tags" {
  description = "Prefix added to unique bucket name"
  default     = {
    Description = "HelloWorld"
  }
}