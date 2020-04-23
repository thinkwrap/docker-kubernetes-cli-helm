FROM thinkwrap/docker-kubernetes-cli

# Get - Helm
RUN curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 \
&& chmod 700 get_helm.sh \
&& ./get_helm.sh

RUN helm version \
&& helm \
&& helm repo add stable https://kubernetes-charts.storage.googleapis.com/ \
&& helm repo list


ENTRYPOINT /bin/bash