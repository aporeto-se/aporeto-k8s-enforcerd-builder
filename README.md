# aporeto-k8s-enforcerd-builder
This generates Prisma Microsegmentation (Aporeto) enforcer Kubernetes yaml for use within cloud (AWS, Azure, GCP). It leverages cloud auto registration and does NOT contain any secrets. Because the ENFORCERD_API and ENFORCERD_NAMESPACE setting are normally derived from the secrets these must be set manually. Here we set them in the Makefile. You must set them.

## Usage
1. Clone the repo
1. Edit the file Makefile
1. Run the command make
1. Create the K8S namespace aporeto
1. Apply the generated yaml (enforcerd.conf)

## Example
1. git clone https://github.com/aporeto-se/aporeto-k8s-enforcerd-builder.git
1. cd aporeto-k8s-enforcerd-builder
1. make
1. kubectl create ns aporeto
1. kubectl apply -f enforcerd.yaml

## Note
You must have a valid cloud registration policy created and enabled. You can test this by running the command 'apoctl auth aws/azure/gcp' from within a container running within your K8S cluster.
