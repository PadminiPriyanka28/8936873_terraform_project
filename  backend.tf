terraform {
  backend "s3" {
    bucket         = "padmini-terraform-state-bucket"  # <== your new name
    key            = "global/s3/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}
