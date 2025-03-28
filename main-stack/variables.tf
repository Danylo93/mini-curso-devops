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

variable "queues" {
  type        = list(object({
    name                      = string
    delay_seconds             = number
    max_message_size          = number
    message_retention_seconds = number
    receive_wait_time_seconds = number
  }))
  
  default = [
    {
      name                      = "devops-na-nuvem-queue-1"
      delay_seconds             = 90
      max_message_size          = 2048
      message_retention_seconds = 86400
      receive_wait_time_seconds = 10
    },
    {
      name                      = "devops-na-nuvem-queue-2"
      delay_seconds             = 90
      max_message_size          = 2048
      message_retention_seconds = 86400
      receive_wait_time_seconds = 10
    }
  ]
}