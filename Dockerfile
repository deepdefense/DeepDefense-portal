FROM nginx:latest
LABEL version="1.2.0" \
    description="this is portal server. listen on 5001"


COPY . /usr/share/nginx/html
COPY default.conf /etc/nginx/conf.d
EXPOSE 5001

CMD ["nginx", "-g", "daemon off;"]
