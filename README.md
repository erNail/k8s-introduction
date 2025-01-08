# k8s-introduction

## Containers

Problem: Applications need other binaries and libraries at a specific version to run (dependencies),
which makes it complex to run it on different machines


Solution: Containers contain the software and all dependencies needed
to run the software

## Container Orchestration

Problem: Software can now run easily on different machines,
but running on one machine can cause downtime of your application,
and performance issues. What if the machines CPU simply dies?

Solution: Run your application on multiple machines

Problem: How do you handle your application being available on different machines?
Which machines IP do you use to reach the application?
What should happen if the application dies on one machine?
How do you keep track of which machine is doing what?
How do you ensure that multiple applications don't steal resources from each other?
How do you prevent downtime on updates?
How do you deploy and update the applications across the machines?

Solution: Kubernetes

## Kubernetes

### Concepts

- Cattle, not pets: At any point, you should be able to throw away the cluster
  and (simply) recreate it
- GitOps: The infrastructure, configuration and everything else we deploy is defined in code.
- Continuous Integration and Delivery: Changes to the code cause quality checks and deployments.

### Set up a cluster

#### For productive use

- K3s
- Talos Linux

#### For development purposes

- minikube

### Install development tools

- minikube
- Helm
- Helmfile
- Lens/OpenLens
- pre-commit
- go-task


### Deploy the "Standard" tech stack

In my opinion, every K8s cluster should have:

- Monitoring & Alerting stack
- Logging Stack
- Ingress Reverse Proxy
- cert-manager
- A tool so secrets can be stored in Git
- CD/GitOps Tool

### Kuberneterize your applications

