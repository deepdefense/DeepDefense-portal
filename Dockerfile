FROM nginx:1.16.0
LABEL version="v2.1" \
    description="this is portal server. listen on 5001"


COPY index.html /usr/share/nginx/html
COPY static/. /user/share/nginx/static
COPY default.conf /etc/nginx/conf.d
EXPOSE 5001

CMD ["nginx", "-g", "daemon off;"]
