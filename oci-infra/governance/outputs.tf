output "iam_compartment_network" {
  description = "compartment ocid, parent ocid, name, description"
  value = {
    id = module.iam_compartment_network.compartment_id
    parent_id = module.iam_compartment_network.parent_compartment_id
    name = module.iam_compartment_network.compartment_name
    description = module.iam_compartment_network.compartment_description
  }
}

output "iam_compartment_cluster" {
  description = "compartment ocid, parent ocid, name, description"
  value = {
    id = module.iam_compartment_cluster.compartment_id
    parent_id = module.iam_compartment_cluster.parent_compartment_id
    name = module.iam_compartment_cluster.compartment_name
    description = module.iam_compartment_cluster.compartment_description
  }
}
