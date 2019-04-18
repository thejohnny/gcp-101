# gcp-101
Basic usage of Terraform with GCP

Step 1: Sign up for Google Cloud Platform (GCP) at cloud.google.com, using your personal GMail account, and [create a "Project" in GCP.](https://cloud.google.com/resource-manager/docs/creating-managing-organization#creating-projects)

Do you know what a Project is? It's a way to organize various GCP resources or something. Doesn't matter that much for this. 

Step 2: Hunt around for the project_name, project_id, billing_account, and org_id, according to this recursive documentation (which refers you to more documentation): 

https://cloud.google.com/community/tutorials/managing-gcp-projects-with-terraform#set_up_the_environment

Step 3: Rename the Terraform Variables file, named terraform.auto.tfvars.example to terraform.auto.tfvars, and keep it in the same folder as main.tf. 

Step 4: Edit the file named terraform.auto.tfvars, and replace the default values with the stuff you hunted down in your Google Cloud account. 

Step 5: Run `terraform init`

Step 6: Run `terraform plan`

Step 7: Run `terraform apply`

Step 8: Run `terraform destroy` to destroy all the GCP stuff you created. 
