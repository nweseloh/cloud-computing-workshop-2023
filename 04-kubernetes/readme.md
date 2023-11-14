Kubernetes commands

<details>
<summary>Login to Azure Kubernetes cluster</summary>
 az aks get-credentials --name MY-NAME-AKS --resource-group MY-NAME-RG
</details>

<details>
<summary>Get Namespaces</summary>
kubectl get namespaces
</details>

<details>
<summary>Create Namespace</summary>
kubectl create namespace webapp
</details>

<details>
<summary>Get Namespace Details</summary>
kubectl describe namespace webapp
</details>

<details>
<summary>Delete Namespace</summary>
kubectl delete namespace webapp
</details>

<details>
<summary>Apply Single Declarative Configuration File</summary>
kubectl apply -f MY-FILE.yaml
</details>

<details>
<summary>Apply all Configuration Files in Current Directory</summary>
kubectl apply -f .
</details>