variable "prefix" {
  description = "Prefix added to unique bucket name"
  default     = "stenio"
}

variable "region" {
  description = "AWS Region"
  default     = "us-east-1"
}

variable "tags" {
  description = "Prefix added to unique bucket name"
  default     = {
    Description = "HelloWorld"
  }
}