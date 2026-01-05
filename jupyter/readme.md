```
docker build -t jupyter-nb:v1.0 -f dockerfile .
 
docker run -itd --name jp-nb5 -p 8004:8888 -p 8003:8002 -p 8001:8001 -v /data/AI/myenv/mounts/cmn_wb1:/root/jupyter/data docker.io/niranjanv64/jupyter-nb:v1.0.3.1
 
docker exec -it jp-nb5 bash
 
    1  eval "$(/root/anaconda3/bin/conda shell.bash hook)"
    2  conda env list
    3  conda activate mywb1
    4  jupyter notebook --generate-config
    5  vi /root/.jupyter/jupyter_notebook_config.py
         c.NotebookApp.certfile = '/root/jupyter/data/certs/mycert.pem'
         c.NotebookApp.keyfile = '/root/jupyter/data/certs/mykey.key'
 
docker restart jp-nb5
 
docker logs jp-nb5
```
