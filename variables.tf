variable "console_num_instances" { default = 1 }

variable "project_name" { default = 'myrandomprojectname' }

variable "project_id" {  }  

variable "billing_account" {  }

variable "org_id" {  }

variable "region" { default = 'us-west2' }


##  Note: These can also be defined as follows: 
##  export TF_VAR_my_variable_name="top-secret-value"
##  For example, TF_VAR_account='{"type": "service_account",  "project_id": "unique-highway-237219"...
##  Would correspond to the account variable
