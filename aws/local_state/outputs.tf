output "instance_ids" {
	value = aws_instance.app_server[*].id
}

output "instance_names"{
	value = [for inst in aws_instance.app_server : inst.tags["Name"]]
}

output "private_ips" {
	value = aws_instance.app_server[*].private_ip
}

output "public_ips"{
	value = aws_instance.app_server[*].public_ip
}

output "instance_types" {
	value = aws_instance.app_server[*].instance_type
}

output "host_ids" {
	value = aws_instance.app_server[*].host_id
}

output "vpc_id" {
	value = aws_instance.app_server[*].vpc_security_group_ids
}

output "subnet_ids"{
	value = aws_instance.app_server[*].subnet_id
}

output "public_dns_names"{
	value = aws_instance.app_server[*].public_dns
}
