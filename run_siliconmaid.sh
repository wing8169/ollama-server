# install nodejs and npm
curl -sL https://deb.nodesource.com/setup_18.x -o /tmp/nodesource_setup.sh
bash /tmp/nodesource_setup.sh
apt-get install nodejs -y
# install pm2
npm install pm2 -g
# install ollama
wget https://ollama.com/install.sh
sh install.sh
wget https://huggingface.co/TheBloke/Silicon-Maid-7B-GGUF/resolve/main/silicon-maid-7b.Q8_0.gguf
wget https://green-mad-elk-149.mypinata.cloud/ipfs/QmavQtTprdaogQMVpYz7735Ve5zumjANpc6JgXHgnRacFm/siliconmaid-7b-seraphina/Modelfile
# start pm2
pm2 start main.py
ollama create siliconmaid -f Modelfile