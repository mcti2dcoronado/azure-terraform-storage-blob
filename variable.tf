variable "client_id"{
  type=string
}
variable "client_secret"{
  type=string
}
variable "subscription_id"{
  type=string
}
variable "tenant_id"{
  type=string
}

variable "account_tier"{
  type = string
  default = "Standard"
}

variable "account_replication_type"{
  type = string
  default = "LRS"
}

variable "container_access_type"{
  type = string
  default = "private"
}

variable "blob_type"{
  type = string
  default = "Block"
}
  
variable "blob_source"{
  type = string
  default = "example.zip"
}
