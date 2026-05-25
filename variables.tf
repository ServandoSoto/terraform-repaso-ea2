# ─── VPC ───────────────────────────────────────────────────────────────────────
variable "vpc_cidr" {
  description = "CIDR block de la VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "Nombre de la VPC"
  type        = string
  default     = "vpc-prueba2"
}

variable "public_subnet_cidr" {
  description = "CIDR de la subnet pública"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR de la subnet privada"
  type        = string
  default     = "10.0.2.0/24"
}

variable "az" {
  description = "Availability zone"
  type        = string
  default     = "us-east-1a"
}

variable "security_group_name" {
  description = "Nombre del security group"
  type        = string
  default     = "web-sg"
}

# ─── EC2 ───────────────────────────────────────────────────────────────────────
variable "ami_id" {
  description = "AMI para la instancia EC2"
  type        = string
  default     = "ami-0c02fb55956c7d316"
}

variable "instance_type" {
  description = "Tipo de instancia EC2"
  type        = string
  default     = "t2.micro"
}

variable "instance_name" {
  description = "Nombre de la instancia EC2"
  type        = string
  default     = "ec2-web"
}

variable "environment" {
  description = "Entorno de despliegue (dev, test, prod)"
  type        = string
  default     = "dev"
}

# ─── S3 ────────────────────────────────────────────────────────────────────────
variable "bucket_name" {
  description = "Nombre base del bucket S3"
  type        = string
  default     = "mi-bucket-prueba2"
}