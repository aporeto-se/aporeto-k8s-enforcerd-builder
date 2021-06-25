# aporeto-k8s-enforcerd-builder
This generates Prisma Microsegmentation (Aporeto) enforcer Kubernetes yaml for use within cloud (AWS, Azure, GCP). It leverages cloud auto registration and does NOT contain any secrets. Because the ENFORCERD_API and ENFORCERD_NAMESPACE setting are normally derived from the secrets these must be set manually. Here we set them in the Makefile. You must set them.

## Usage
1. git clone https://github.com/aporeto-se/aporeto-k8s-enforcerd-builder.git
1. cd aporeto-k8s-enforcerd-builder
1. # Edit the Makefile
1. make
1. kubectl create ns aporeto
1. kubectl apply -f enforcerd.yaml
