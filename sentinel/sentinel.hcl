module "tfplan-functions" {
  source = "common-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
  source = "common-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
  source = "common-functions/tfconfig-functions.sentinel"
}

module "aws-functions" {
  source = "aws-functions/aws-functions.sentinel"
}



policy "limit-proposed-monthly-cost" {
    enforcement_level = "hard-mandatory"
}

policy "restrict-ec2-instance-type" {
    enforcement_level = "hard-mandatory"
}

policy "enforce-mandatory-tags" {
    enforcement_level = "hard-mandatory"
}

policy "require-private-acl-and-kms-for-s3-buckets" {
  enforcement_level = "soft-mandatory"
}

policy "restrict-s3-bucket-policies" {
  enforcement_level = "advisory"
}