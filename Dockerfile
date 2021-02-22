FROM ubuntu:latest
RUN apt-get update
RUN apt-get install nginx -y
RUN echo $'$CIRCLE_REPOSITORY_URL \n\
$CIRCLE_USERNAME \n\
$CIRCLE_BUILD_URL' > build_asset.txt
COPY index.html /var/www/html/
COPY index.js /var/www/html/
COPY build_asset.txt /var/www/html/
EXPOSE 80
CMD ["nginx","-g","daemon off;"]