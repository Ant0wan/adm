sudo dnf install podman
podman search nginx
podman pull nginx
podman pull ubuntu/nginx
podman pull nginx:1.22.1
podman images
podman rmi nginx:1.22.1
podman run --detach --publish 8080:80 --restart on-failure --name mywebserver nginx
podman stop mywebserver
podman ps --all
podman start mywebserver
nc localhost 8080
#GET /
podman stop mywebserver
podman rm mywebserver
podman rmi nginx
podman build --tag ant0wan/mywebserver:1.0 --file Dockerfile
nc localhost 8080
#GET /
