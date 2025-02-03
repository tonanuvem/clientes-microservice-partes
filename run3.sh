#source venv_clientes/bin/activate

npx -y create-react-app clientes_admin && cd clientes_admin
npm install react@18 react-dom@18 web-vitals
npm i react-admin ra-data-simple-rest @mui/material @emotion/react @emotion/styled

SERVER_IP=$(curl checkip.amazonaws.com)
sed -i 's|IP|'$SERVER_IP'|' clientes_microservice-parte3_SPA/src/App.js

rm clientes_admin/src/App.js
cp clientes_microservice-parte3_SPA/src/App.js clientes_admin/src/App.js

npm start &
python3 clientes_microservice-parte3_SPA/server.py &

#SERVER_IP=$(curl checkip.amazonaws.com)
#echo ""
#echo "    Acessar: http://$SERVER_IP:5000/ "
#echo ""

wait
