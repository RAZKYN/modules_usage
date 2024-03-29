module "my-vnet" {

    source = "./modules/my-vnet"
    az_rg = {
      location = "centralindia"
      name = "fromtf"
    }
    vnet_details = {
      name = "vpc"
      address_space = [ "10.10.0.0/16" ]
    }
    subnet_prefixes = [ "10.10.0.0/24", "10.10.1.0/24", "10.10.2.0/24" ]
}

output "subnets_available" {
    value = module.my-vnet.subnet_counts
}