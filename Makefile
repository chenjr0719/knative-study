.PHONY: \
	create-kind-cluster \
	delete-kind-cluster \
	create-kn \
	delete-kn

create-kind-cluster:
	$(CURDIR)/deployments/kind/create-kind-cluster.sh

delete-kind-cluster:
	$(CURDIR)/deployments/kind/delete-kind-cluster.sh

create-kn:
	$(CURDIR)/deployments/knative/create-knative.sh
delete-kn:
	$(CURDIR)/deployments/knative/delete-knative.sh
