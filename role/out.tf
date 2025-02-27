output "s3_role" {
    value = aws_iam_role.s3_full_access_role.name
  
}
output "iam_profile" {
    value = aws_iam_instance_profile.s3_instance_profile.name
  
}