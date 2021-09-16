# get the mongo docker image
resource "docker_image" "nginx" {
  name         = "nginx"
  keep_locally = true
}

# start a container and expose the 27017 port
resource "docker_container" "nginx" {
  name  = var.nginx_container_name
  image = docker_image.nginx.latest
  ports {
    internal = 8080
    external = var.nginx_exposed_port
  }
}
