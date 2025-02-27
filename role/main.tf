resource "aws_iam_role" "s3_full_access_role" {
  name = "S3FullAccessRole"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      }
    ]
  })
}

resource "aws_iam_policy_attachment" "s3_full_access_attachment" {
  name       = "s3_full_access_attachment"
  roles      = [aws_iam_role.s3_full_access_role.name]
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}
resource "aws_iam_instance_profile" "s3_instance_profile" {
  name = "S3InstanceProfile"
  role = aws_iam_role.s3_full_access_role.name
}
