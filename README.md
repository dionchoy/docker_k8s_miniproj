# Simple-Flaskapp
A simple flask app for Docker and K8s mini project

## Instructions to for mini project

### Task 1
1. Create the web app and Dockerfile

2. Build the docker image\
`docker build -t miniproj .`

3. Test the docker image\
`docker run -d -p 5000:5000 miniproj`

4. Verify that the webpage can be accessed at\
http://127.0.0.1:5000

### Task 2
1. Login to Docker CLI\
`docker login`

2. Tag the image\
`docker image tag miniproj dionchoy/miniproj`

3. Push the image to Docker Hub\
`docker push dionchoy/miniproj`

### Task 3
1. Download minikube

2. Start minikube with multiple nodes\
`minikube start --nodes 2`

3. Check that the cluster is running properly\
`kubectl get nodes`

### Task 4
1. Create a Kubernetes deployment YAML file, 'deploy.yml'

2. Apply the deploy.yml file
`kubectl apply -f deploy.yml`

### Task 5
1. Create a persistent volume YAML file, 'pv.yml'

2. Apply the 'pv.yml' file\
`kubectl apply -f pv.yml`

3. Create a persistent volume claim YAML file, 'pvc.yml'

4. Apply the 'pvc.yml' file\
`kubectl apply -f pvc.yml`

5. Update 'deploy.yml' to mount persistent volume and apply changes\
`kubectl apply -f deploy.yml`

6. Enter pod shell and create 'log.txt' file\
`kubectl exec -it {pod name} -- sh`\
`cd /data`\
`echo 'test persistence' > log.txt`

7. Delete and recreate deployment\
`kubectl delete deploy miniproj`\
`kubectl apply -f deploy.yml`

8. Test persistence of data\
`kubectl exec -it {pod name} -- sh`\
`#cd /data`\
`#cat log.txt`\
\
EXPECTED OUTPUT:`test persistence`

### Task 6
1. Create svc.yml file and run\
`kubectl apply -f svc.yml`

3. Get ip of miniproj-service
`kubectl get services`

4. Create test-pod\
`kubectl run test-pod --image=nginx`

5. Enter test-pod shell and test\
`kubectl exec -it test-pod -- sh`\
`#curl 10.43.165.62`\
\
EXPECTED OUTPUT: Return html webpage

