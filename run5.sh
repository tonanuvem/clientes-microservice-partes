docker run -d -p 27017:27017 --name mongodb mongo
#source venv_clientes/bin/activate

cd 
npm start &
python3 ../clientes_microservice-parte5_BD/server.py &
wait

#SERVER_IP=$(curl checkip.amazonaws.com)
#echo ""
#echo "    Acessar: http://$SERVER_IP:5000/ "
#echo ""
#python3 clientes_microservice-parte5_BD/server.py
