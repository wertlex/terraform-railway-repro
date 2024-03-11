terraform {
  required_providers {
    railway = {
      source  = "terraform-community-providers/railway"
      version = "0.4.0"
    }
  }
}

provider "railway" {
  token = "<your-token-goes-here>"
}

resource "railway_project" "my_project" {
  name = "my_project"
}

resource "railway_service" "my_service_1" {
  name       = "my_service_1"
  project_id = railway_project.my_project.id
  source_repo = "wertlex/terraform-railway-repro"
  source_repo_branch = "main"
}

resource "railway_variable" "USER" {
  name = "USER"
  value = "user"
  environment_id = railway_project.my_project.default_environment.id
  service_id = railway_service.my_service_1.id
}
