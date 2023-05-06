# Instance

variable "instance" {
  description = "Instance Parameters"
  type = object({
    region       = string
    keypair_name = string
    name         = string
    flavor       = string
    image        = string
    user         = string
  })
}

variable "password" {
  description = "database password"
  type        = string
}

variable "endpoint" {
  description = "database endpoint for application"
  type        = string
}