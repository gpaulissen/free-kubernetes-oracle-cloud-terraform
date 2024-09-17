output "vcn" {
  description = "vcn id"
  value = {
    vcn_id = module.vcn.vcn_id
    nat_route_id = module.vcn.nat_route_id
    ig_route_id = module.vcn.ig_route_id
  }
}
