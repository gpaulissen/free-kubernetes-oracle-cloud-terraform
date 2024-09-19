TF_FILES := compartments.tf outputs.tf variables.tf

init: .terraform

.terraform:
	terraform init

plan: plan.out

plan.out: .terraform $(TF_FILES)
	terraform plan -out=$@

apply: terraform.tfstate $(TF_FILES)

terraform.tfstate: plan.out
	terraform plan -auto-approve $<

.PHONY: init plan apply

.SUFFIXES:
