variable "region" {
  description = "The region where the VPC lab will be deployed."
  type        = string
  default     = "us-south"
}

variable "existing_cos_instance" {
  description = "The name of an existing Cloud Object Storage instance. If none provided a new one will be created."
  type        = string
}

variable "existing_ssh_key" {
  description = "The name of an existing SSH key. If none provided a new one will be created."
  type        = string
}

variable "existing_resource_group" {
  description = "The name of an existing Resource Group. If none provided a new one will be created."
  type        = string
}

variable "prefix" {
  description = "Project prefix for the VPC lab. This will be added to resource names and tags."
  type        = string
}

variable "tags" {
  description = "List of Tags for all resources."
  type        = list(string)
  default     = ["terraform-module:base_vpc"]
}