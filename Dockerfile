FROM ubuntu:latest
ARG CIRCLE_CI_URL=$CIRCLE_REPOSITORY_URL
RUN apt-get update
RUN apt-get install nginx -y
RUN echo $CIRCLE_CI_URL
COPY index.html /var/www/html/
COPY index.js /var/www/html/
EXPOSE 80
CMD ["nginx","-g","daemon off;"]