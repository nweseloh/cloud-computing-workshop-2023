resource "azurerm_resource_group" "example" {
  name = "<MY-NAME>-rg-tf"
  location = "West Europe"
}

resource "azurerm_kubernetes_cluster" "example" {
  name                = "<MY-NAME>-aks"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  dns_prefix          = "<MY-NAME>"
  
  node_resource_group  = "<MY-NAME>-aks-nodes"
  
  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_B2s"
  }

  identity {
    type = "SystemAssigned"
  }

  ingress_application_gateway {
    gateway_name = "<MY-NAME>-aks-appgateway"
    subnet_cidr =  "10.225.0.0/16"
  }
}


resource "azurerm_container_registry" "example" {
  name                = "<MY-REGISTRY>"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  sku                 = "Basic"
}



resource "azurerm_role_assignment" "example" {
  principal_id                     = azurerm_kubernetes_cluster.example.kubelet_identity[0].object_id
  role_definition_name             = "AcrPull"
  scope                            = azurerm_container_registry.example.id
  skip_service_principal_aad_check = true
}
