#source venv_clientes/bin/activate
SERVER_IP=$(curl checkip.amazonaws.com)
echo ""
echo "    Acessar: http://$SERVER_IP:5000/api/ui "
echo ""
python3 clientes_microservice-parte2_CRUD/server.py
