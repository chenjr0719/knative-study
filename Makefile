.PHONY: \
	create-kind-cluster \
	delete-kind-cluster

create-kind-cluster:
	$(CURDIR)/deployments/kind/create-kind-cluster.sh

delete-kind-cluster:
	$(CURDIR)/deployments/kind/delete-kind-cluster.sh
