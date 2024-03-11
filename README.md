# Minimal reproducible repo for [Terraform Railway Provider](https://github.com/terraform-community-providers/terraform-provider-railway)

How to use:
 - make sure this repo (or it's clone) is available through [Github integrations](https://docs.railway.app/reference/integrations#github-integration) in your account
 - do all the required edits in the repo
 - make sure railway token is set (see `main.tf`)
 - `terraform init` to install all required providers
 - `terraform apply` to apply configuration from `main.tf` to your Railway
 - `terraform destroy` to destroy everything what was created
