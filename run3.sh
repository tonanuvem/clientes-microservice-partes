#source venv_clientes/bin/activate
SERVER_IP=$(curl checkip.amazonaws.com)
echo ""
echo "    Acessar: http://$SERVER_IP:5000/ "
echo ""
python3 clientes_microservice-parte3_SPA/server.py
