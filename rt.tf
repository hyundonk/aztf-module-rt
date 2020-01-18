
resource "azurerm_route_table" "rt" {
  name                      = "rt-${var.name}"
  location                  = var.location
  resource_group_name       = var.rg

  dynamic "route" {
    for_each = var.routes
    
    content {
      name                    = route.value.name
      address_prefix          = route.value.address_prefix
      next_hop_type           = route.value.next_hop_type
      next_hop_in_ip_address  = route.value.next_hop_in_ip_address
    }
  }
/*
  route {
    name                    = var.name
    address_prefix          = var.address_prefix
    next_hop_type           = var.next_hop_type
    next_hop_in_ip_address  = var.next_hop_in_ip_address
  }
*/
  tags = var.tags
}

