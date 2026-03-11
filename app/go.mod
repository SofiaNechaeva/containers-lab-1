module containers-lab-1

go 1.21

require github.com/lib/pq v1.10.9


kubectl delete configmap postgres-init-sql

kubectl delete deployment postgres-deployment

kubectl apply -f k8s/07-postgres-deployment.yaml

minikube service nginx-service --url


kubectl get pods
kubectl exec -it <postgres-pod> -- bash
kubectl exec -it <postgres-pod> -- sh

psql -U postgres -d myapp
\dt
INSERT INTO users (name, email) VALUES ('Sofya', 'sofya@example.com');
