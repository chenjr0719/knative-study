.PHONY: \
	create-kind-cluster \
	delete-kind-cluster

create-kind-cluster:
	$(CURDIR)/deployments/infra/kind/create-kind-cluster.sh

delete-kind-cluster:
	$(CURDIR)/deployments/infra/kind/delete-kind-cluster.sh

init-kn:
	$(CURDIR)/deployments/infra/knative/init-knative.sh
