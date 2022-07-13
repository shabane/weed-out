FROM ubuntu
RUN apt-get update && apt-get install wget -y
COPY . /code/
WORKDIR /code/
CMD bash main.sh