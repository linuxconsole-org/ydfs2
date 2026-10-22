mkdir -p ~/dev-projet
echo "<h1>Hello depuis LinuxConsole !</h1>" > ~/dev-projet/index.html

podman run -d --name dev-nginx -p 8080:80 \
  -v ~/dev-projet:/usr/share/nginx/html:Z \
  docker.io/library/nginx:alpine

podman run -ti  -v $PWD/test:/home/linuxconsole2026/test2 yledoare/ydfs-2.12 bash
