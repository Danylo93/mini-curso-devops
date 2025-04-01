variable "tags" {
  type        = map(string)
  default     = {
    Environment = "production"
    Project     = "Devops-na-Nuvem"
  }
}

# Configure the AWS Provider
variable "assume_role" {

 type   = object({
    region   = string
    role_arn = string
  })

  default = {
    region   = "us-east-1"
    role_arn = "arn:aws:iam::905418204100:role/DevopNuvemLive-terraform-1"
  }
}

variable "remote_backend" {
  type = object({
    bucket_name    = string
    dynamo_table_name = string
    dynamo_table_billing_mode = string
    dynamo_table_hash_key_attribute_name = string
    dynamo_table_hash_key_attribute_type = string
  })

  default = {
    bucket_name    = "devops-na-nuvem-terraform-remote-backend-course1"
    dynamo_table_name = "devops-na-nuvem-terraform-remote-backend-course"
    dynamo_table_billing_mode = "PAY_PER_REQUEST"
    dynamo_table_hash_key_attribute_name = "LockID"
    dynamo_table_hash_key_attribute_type = "S"
  }
}
