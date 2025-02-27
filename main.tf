provider "aws" {
  region = "ap-south-1"  # ✅ Match the region where your S3 bucket is created
}


terraform {
  backend "s3" {
    bucket         = "test-cloud-4"  # ✅ Match the bucket name
    key            = "terraform.tfstate"  # ✅ Path inside the bucket
    region         = "ap-south-1"  # ✅ Match provider region
  }
}

module "vpc" {
  source = "./vpc"
}

module "sg" {
  source = "./sg"
  vpc_id = module.vpc.vpc_id
}

module "role" {
  source = "./role"
}

module "ec2" {
  source             = "./ec2"
  public_subnet_id   = module.vpc.public_subnet_ids[0]  # First subnet for public instance
  private_subnet_id  = module.vpc.private_subnet_ids[0]
  security_group_id  = module.sg.sg
  instance_profile   = module.role.iam_profile # ✅ Corrected parameter name
}
