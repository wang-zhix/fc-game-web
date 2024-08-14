# 使用 Nginx 1.18 作为基础镜像
FROM nginx:1.18

# 创建一个目录用于存放自定义网页文件
RUN mkdir -p /fc-game-web

# 将当前目录下的文件拷贝到自定义目录
COPY . /fc-game-web

# 拷贝自定义的 Nginx 配置文件
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose the default Nginx port
EXPOSE 80

# 启动 Nginx
CMD ["nginx", "-g", "daemon off;"]
