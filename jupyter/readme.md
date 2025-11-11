 2018  docker build -t jupyter-nb:v1.0 -f dockerfile .
 2019  docker run -itd --name jupyter1 -p 8889:8888 jupyter-nb:v1.0
 2020  docker logs jupyter1
