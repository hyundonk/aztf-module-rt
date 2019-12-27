
resource "azurerm_route_table" "rt" {
  name                      = "rt-${var.name}"
  location                  = var.location
  resource_group_name       = var.rg

  route {
    name                    = var.name
    address_prefix          = var.address_prefix
    next_hop_type           = var.next_hop_type
    next_hop_in_ip_address  = var.next_hop_ip_in_address
  }

  tags = var.tags
}

