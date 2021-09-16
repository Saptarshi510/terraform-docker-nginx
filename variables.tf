variable "nginx_container_name" {
  type        = string
  description = "name of the container"
}

variable "nginx_exposed_port" {
  type        = number
  description = "exposed port of the nginx container"
  default     = 9099
}
