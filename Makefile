export ENFORCERD_NAMESPACE="/806775361903163392/prisma-microseg-field-azure/prisma-aks-microseg"
export ENFORCERD_API="https://api.east-01.network.prismacloud.io"

export ENFORCERD_IMAGE="gcr.io/prismacloud-cns/enforcerd:v1.1489.3"

build:
	bash aporeto-k8s-enforcerd-builder > enforcerd.yaml
