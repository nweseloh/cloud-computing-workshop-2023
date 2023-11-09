Docker commands

<details>
<summary>Build</summary>
 docker build -t MY-IMAGE .
</details>

<details>
<summary>Run and map to http://localhost:8080 </summary>
docker run -p 8080:80 MY-IMAGE 
</details>

<details>
<summary>Run, start, stop, remove a named container</summary>
docker run -p 8080:80 --name MY-CONTAINER MY-IMAGE 
docker stop MY-CONTAINER
docker start MY-CONTAINER
docker remove MY-CONTAINER
</details>

<details>
<summary>Exec into a named container</summary>
docker exec -ti MY-CONTAINER sh
ls
exit
</details>

<details>
<summary>Login to Azure Registry</summary>
docker login MYREGISTRY.azurecr.io

OR

az acr login --name MYREGISTRY
</details>


<details>
<summary>Tag for Azure Registry</summary>
docker tag MY-IMAGE MYREGISTRY.azurecr.io/MY-IMAGE
</details>


<details>
<summary>Push to Azure Registry</summary>
docker push MYREGISTRY.azurecr.io/MY-IMAGE
</details>
