FROM ubuntu
LABEL maintainer = "vikash@resecsystems.io"
RUN apt-get update && apt-get install nginx -y
WORKDIR /apps
COPY ./index.html .
CMD ["service","nginx","start"]
