/*resource "azurerm_container_app" "providermockapp-wiremock" {
  name                         = "biprowiremock"
  container_app_environment_id = azurerm_container_app_environment.providermock-app-env.id
  resource_group_name          = azurerm_resource_group.providermock-rg.name
  revision_mode                = "Single"

  registry {
    server               = "containerregistrybipro.azurecr.io"
    username             = "containerRegistryBipro"
    password_secret_name = "containerregistrybiproazurecriopass"
  
  }

  ingress {
    allow_insecure_connections = true
    external_enabled           = true
    target_port                = 8080
    traffic_weight {
      latest_revision          = true
      percentage               = 100
    }
  }

  template {
    container {
      name   = "wiremock-loadtesting"
      image  = "containerregistrybipro.azurecr.io/bipro/wiremock-loadtesting:latest"
      cpu    = 1.0
      memory = "2Gi"
    }
    min_replicas = 1
    max_replicas = 1
  }

  secret { 
    name  = "containerregistrybiproazurecriopass"
    value = "rGSAi+YRomxytwts3bP9Xn2pC0e/AG1eZZG6HY6Su0+ACRAwEqo+"
  }

  tags = local.default_tags

}*/