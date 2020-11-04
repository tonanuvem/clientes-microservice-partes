pip3 install --upgrade pip
#source venv_clientes/bin/activate
#../ip
pip3 install -r clientes_microservice-parte4_DOCKER/requirements.txt
SERVER_IP=$(curl checkip.amazonaws.com)
echo ""
echo "    Acessar: http://$SERVER_IP:5000"
echo ""
python3 clientes_microservice-parte0/server.py
