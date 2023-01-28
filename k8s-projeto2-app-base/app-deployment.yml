apiVersion: apps/v1
kind: Deployment
metadata:
  name: app
  labels:
    app: app
spec:
  replicas: 3
  selector:
    matchLabels:
      app: app
  template:
    metadata:
      labels:
        app: app
    spec:
      containers:
      - name: app
        image: denilsonbonatti/kubernetes-projeto2-dio:1.0
        imagePullPolicy: Always
        ports:
        - containerPort: 80
