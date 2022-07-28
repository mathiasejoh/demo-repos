# Get DNS information from AWS Route53
data "aws_route53_zone" "getmejoh" {
  name = "getmejoh.com"
}

# Output getmejoh Zone ID
output "getmejoh_zoneid" {
  description = "The Hosted Zone id of the desired Hosted Zone"
  value       = data.aws_route53_zone.getmejoh.zone_id
}

# Output getmejoh name
output "getmejoh_name" {
  description = " The Hosted Zone name of the desired Hosted Zone."
  value       = data.aws_route53_zone.getmejoh.name
}
