cd workspace
# install nodejs and npm
apt install -y nodejs
apt install -y npm
# install pm2
npm install pm2 -g
# install ollama
wget https://ollama.com/install.sh
sh install.sh
wget https://huggingface.co/TheBloke/Silicon-Maid-7B-GGUF/resolve/main/silicon-maid-7b.Q8_0.gguf
wget https://green-mad-elk-149.mypinata.cloud/ipfs/QmavQtTprdaogQMVpYz7735Ve5zumjANpc6JgXHgnRacFm/siliconmaid-7b-seraphina/Modelfile
ollama create siliconmaid -f Modelfile
# start pm2
pm2 start main.py