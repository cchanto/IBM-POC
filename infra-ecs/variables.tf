variable "AWS_ACCESS_KEY_ID" {
  default   = ""
  sensitive = true
}

variable "AWS_SECRET_ACCESS_KEY" {
  default   = ""
  sensitive = true
}

variable "project_name" {
  default = "gitlab-ecs-terraform1"
}

variable "region" {
  default = "us-east-1"
}

variable "ecr_image" {
  default = "643855502833.dkr.ecr.us-east-1.amazonaws.com/gitlab-ecs-terraform1:latest" 
}

variable "desired_count" {
  default = 2
}
