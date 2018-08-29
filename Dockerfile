FROM nginx:1.15.2-alpine

MAINTAINER saruman 624380857@qq.com

COPY run.sh run.sh

RUN mkdir -p /tmp/nginx/conf && \
    mkdir -p /tmp/nginx/html && \
    cp -r /etc/nginx/* /tmp/nginx/conf && \
    cp -r /usr/share/nginx/html/* /tmp/nginx/html && \
    chmod +x run.sh

CMD ["./run.sh"]
