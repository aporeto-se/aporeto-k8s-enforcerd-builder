# This must be your namespace where your K8S cluster exist. The format is
# tenant_id + cloud_account + k8s_name

export ENFORCERD_NAMESPACE="/806775361903163392/prisma-microseg-field-azure/prisma-aks-microseg"

# The API can be found in the UI
export ENFORCERD_API="https://api.east-01.network.prismacloud.io"

# This is required. It should be gke, eks, aks, ocp4, or custom
# export ENFORCERD_CLUSTERTYPE=gke
# export ENFORCERD_CLUSTERTYPE=eks
export ENFORCERD_CLUSTERTYPE=aks
# export ENFORCERD_CLUSTERTYPE=ocp4
# export ENFORCERD_CLUSTERTYPE=custom

# These are required. Modify if necessary.
export ENFORCERD_CNI_BIN_DIR="/opt/cni/bin"
export ENFORCERD_CNI_CONF_DIR="/etc/cni/net.d"

# These are optional. Modify if necessary
# export ENFORCERD_INSTALL_CNI_PLUGIN=""
# export ENFORCERD_INSTALL_RUNC_PROXY=""
# export ENFORCERD_CNI_CONF_FILENAME=""
# export ENFORCERD_CNI_PRIMARY_CONF_FILE=""

# The image is required. Modify if necessary.
export ENFORCERD_IMAGE="gcr.io/prismacloud-cns/enforcerd:v1.1489.3"

build:
	bash aporeto-k8s-enforcerd-builder > enforcerd.yaml
