TF_FILES := compartments.tf outputs.tf variables.tf

init: .terraform

.terraform:
	terraform init

plan: plan.out

plan.out: .terraform $(TF_FILES)
	terraform plan -out=$@

apply: plan.out
	terraform apply plan -auto-approve $<


.PHONY: init plan apply

.SUFFIXES:
