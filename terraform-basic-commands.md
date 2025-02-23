#
terraform init

#
terraform plan -var-file "variable.tfvars"  -out tf-plan

#
terraform apply tf-plan



#To destroy resources

terraform plan -var-file "variable.tfvars"  -out tf-plan -destroy
terraform apply tf-plan
