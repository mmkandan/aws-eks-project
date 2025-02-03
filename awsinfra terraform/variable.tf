variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR block for the first private subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "private_subnet_cidr_2" {
  description = "CIDR block for the second private subnet"
  type        = string
  default     = "10.0.3.0/24"
}

variable "availability_zone" {
  description = "Availability zone for the public and private subnet 1"
  type        = string
  default     = "us-east-1a"
}

variable "availability_zone_2" {
  description = "Availability zone for the private subnet 2"
  type        = string
  default     = "us-east-1b"
}

variable "db_instance_class" {
  description = "Instance class for the RDS MySQL database"
  type        = string
  default     = "db.t3.micro"
}

variable "db_name" {
  description = "Name of the RDS database"
  type        = string
  default     = "mydatabase"
}

variable "db_username" {
  description = "Username for the RDS database"
  type        = string
  default     = "admin"
}

variable "db_password" {
  description = "Password for the RDS database"
  type        = string
  default     = "ChangeMe123!"
  sensitive   = true
}

# EKS Cluster Configuration
variable "eks_cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
  default     = "private-eks-cluster"
}

variable "eks_worker_instance_type" {
  description = "EC2 instance type for the EKS worker nodes"
  type        = string
  default     = "t3.medium"
}

variable "eks_desired_node_count" {
  description = "Desired number of worker nodes in the EKS node group"
  type        = number
  default     = 2
}

variable "eks_min_node_count" {
  description = "Minimum number of worker nodes in the EKS node group"
  type        = number
  default     = 1
}

variable "eks_max_node_count" {
  description = "Maximum number of worker nodes in the EKS node group"
  type        = number
  default     = 3
}
