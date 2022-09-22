FROM ubuntu
RUN apt-get update && apt-get install wget apache2-utils -y
COPY . /code/
WORKDIR /code/
CMD bash main.sh