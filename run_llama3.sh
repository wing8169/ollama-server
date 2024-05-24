# install nodejs and npm
curl -sL https://deb.nodesource.com/setup_18.x -o /tmp/nodesource_setup.sh
bash /tmp/nodesource_setup.sh
apt-get install nodejs -y
# install pm2
npm install pm2 -g
# install ollama
wget https://ollama.com/install.sh
sh install.sh
# wget https://huggingface.co/MaziyarPanahi/Meta-Llama-3-8B-Instruct-GGUF/resolve/main/Meta-Llama-3-8B-Instruct.Q8_0.gguf
# echo "FROM ./Meta-Llama-3-8B-Instruct.Q8_0.gguf" > Modelfile
# start pm2
pm2 start main.py
ollama run moondream
# ollama create llama3 -f Modelfile