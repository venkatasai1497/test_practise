output "bucketname" {
  value = module.storage.bucketname
  sensitive = true
}


#-----networking/outputs.tf----
output "public_subnets" {
  value = module.Networking.public_subnets
}
output "public_sg" {
  value = module.Networking.public_sg
}
output "subnet_ips" {
  value = module.Networking.subnet_ips
}


#---Compute Outputs ------
output "public_Instance_IDs" {
  value = module.compute.server_id
}
output "public_Instance_IPs" {
  value = module.compute.server_ip
}

output "dynamodb_table_name" {
  value = aws_dynamodb_table.terraform_state_lock.id
}
