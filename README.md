# 前言
  本镜像支持，挂载/etc/nginx、/var/log/nginx、/usr/share/nginx/html目录到宿主机上，且不会清除掉配置文件。

# 使用指南
	首先建立宿主机挂载文件夹：
		mkdir -p /app/docker/tools/nginx/conf 
		mkdir -p /app/docker/tools/nginx/html 
		mkdir -p /app/docker/tools/nginx/logs 
	进入nginx目录，创建数据卷：
		docker run -d --name nginx_volumes -v $(pwd)/conf:/etc/nginx -v $(pwd)/html:/usr/share/nginx/html -v $(pwd)/logs:/var/log/nginx alpine:3.8
	运行容器：
		docker run -d --name nginx -p 8888:80 -p 8443:443 --volumes-from nginx_volumes dingwenxiang0/nginx:1.15.2-alpine 
