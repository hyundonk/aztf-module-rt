variable "name" {
  description = "(Required) service name"   
}

variable "location" {
  description = "(Required) Location of the public IP to be created"   
}

variable "rg" {
  description = "(Required) Resourge group of the public IP to be created"    
}

variable "tags" {
  description = "(Required) Tags to be applied to the IP address to be created"
}

variable "routes" {

}

variable "disable_bgp_route_propagation" {
  default = false 
}

/*
variable "address_prefix" {

}

variable "next_hop_type" {

}

variable "next_hop_in_ip_address" {

}
*/

