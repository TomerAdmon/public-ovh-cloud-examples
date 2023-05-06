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
