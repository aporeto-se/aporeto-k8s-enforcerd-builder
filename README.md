# aporeto-k8s-enforcerd-builder
This generates Prisma Microsegmentation (Aporeto) enforcer Kubernetes yaml for use within cloud (AWS, Azure, GCP). It leverages cloud auto registration and does NOT contain any secrets. Because the ENFORCERD_API and ENFORCERD_NAMESPACE setting are normally derived from the secrets these must be set manually. Here we set them in the Makefile. You must set them.
