mkdir ./cert
USER="support"
openssl genrsa -out ./cert/$USER.key 2048
openssl req -new -key ./cert/$USER.key -out ./cert/$USER.csr -subj "/CN=$USER/O=propdevelopment" 
openssl x509 -req -in ./cert/$USER.csr -CA ~/.minikube/ca.crt -CAkey ~/.minikube/ca.key -CAcreateserial -out ./cert/$USER.crt -days 365 
kubectl config set-credentials $USER --client-certificate=./cert/$USER.crt --client-key=./cert/$USER.keyi

USER="dev"
openssl genrsa -out ./cert/$USER.key 2048
openssl req -new -key ./cert/$USER.key -out ./cert/$USER.csr -subj "/CN=$USER/O=propdevelopment"
openssl x509 -req -in ./cert/$USER.csr -CA ~/.minikube/ca.crt -CAkey ~/.minikube/ca.key -CAcreateserial -out ./cert/$USER.crt -days 365
kubectl config set-credentials $USER --client-certificate=./cert/$USER.crt --client-key=./cert/$USER.key
