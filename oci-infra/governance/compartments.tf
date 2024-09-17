module "iam_compartment_network" {
  source = "oracle-terraform-modules/iam/oci//modules/iam-compartment"
#  version = "2.0.0"
  tenancy_ocid = var.tenancy_ocid
  compartment_id = var.tenancy_ocid # define the parent compartment. Creation at tenancy root if omitted
  compartment_name = "network-compartment"
  compartment_description = "Network compartment"
  compartment_create = true # if false, a data source with a matching name is created instead
  enable_delete = true # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}

module "iam_compartment_cluster" {
  source = "oracle-terraform-modules/iam/oci//modules/iam-compartment"
#  version = "2.0.0"
  tenancy_ocid = var.tenancy_ocid
  compartment_id = var.tenancy_ocid # define the parent compartment. Creation at tenancy root if omitted
  compartment_name = "cluster-compartment"
  compartment_description = "Cluster compartment"
  compartment_create = true # if false, a data source with a matching name is created instead
  enable_delete = true # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}
