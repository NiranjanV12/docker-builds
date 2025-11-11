eval "$(/root/anaconda3/bin/conda shell.bash hook)" && conda activate mywb1
#source /root/anaconda3/bin/activate mywb1
jupyter notebook --ip=0.0.0.0 --port=8888 --allow-root --no-browser
