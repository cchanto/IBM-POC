variable "cluster-name" {
  default = "Kubernetes-Cluster"
  type    = string
}

variable "aws_region" {
  default = "us-east-1"
  type    = string
}

variable "k8s_bastion_node_instance_type" {
  default = "t2.nano"
  type    = string
}

variable "k8s_bastion_node_ami" {
  default = "ami-0430f94b4fdef0c71"
  type    = string
}

variable "k8s_bastion_node_key_name" {
  default = "poc_key"
  type    = string
}

variable "worker_nodes_desired_size" {
  default = "1"
  type    = string
}

variable "worker_nodes_max_size" {
  default = "1"
  type    = string
}

variable "worker_nodes_min_size" {
  default = "1"
  type    = string
}
