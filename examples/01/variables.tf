variable "endpoint" {
  description = "database endpoint for application"
  type        = string
}

variable "password" {
  description = "database password"
  type        = string
}

variable "region" {
  description = "Region"
  type        = string
}


variable "subnet" {
  description = "Subnet parameters"
  type = object({
    name       = string
    cidr       = string
    dhcp_start = string
    dhcp_end   = string
  })
}

# SSH keypair

variable "keypair" {
  description = "Keypair"
  type = object({
    name                 = string
    main_region          = string
    to_reproduce_regions = list(string)
    keys_path            = string
  })
}

# Bastion

variable "bastion" {
  description = "Bastion Parameters"
  type = object({
    region       = string
    keypair_name = string
    name         = string
    flavor       = string
    image        = string
    user         = string
  })
}

# Floating IP

variable "floatip" {
  description = "Floating IP"
  type = object({
    region       = string
    component_id = string
  })
  default = {
    region       = ""
    component_id = ""
  }
}
