resource "azurerm_resource_group" "example" {
  name = "example-rg-tf"
  location = "West Europe"
}

resource "azurerm_kubernetes_cluster" "example" {
  name                = "example-aks"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  dns_prefix          = "example"
  
  node_resource_group  = "example-aks-nodes"
  
  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_B2s"
  }

  identity {
    type = "SystemAssigned"
  }

  ingress_application_gateway {
    gateway_name = "example-aks-appgateway"
    subnet_cidr =  "10.225.0.0/16"
  }
}


resource "azurerm_container_registry" "example" {
  name                = "nicoleweseloh2023"
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