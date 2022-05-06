#-----compute/outputs.tf-----
output "server_id" {
  value = join(", ", aws_instance.tf_instance.*.id)
}
output "server_ip" {
  value = join(", ", aws_instance.tf_instance.*.public_ip)
}
