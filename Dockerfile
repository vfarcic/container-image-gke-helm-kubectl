
FROM google/cloud-sdk:308.0.0

RUN curl https://baltocdn.com/helm/signing.asc | apt-key add - \
    && apt-get install apt-transport-https --yes \
    && echo "deb https://baltocdn.com/helm/stable/debian/ all main" | tee /etc/apt/sources.list.d/helm-stable-debian.list \
    && apt-get update \
    && apt-get install helm \
    && curl -LO "https://storage.googleapis.com/kubernetes-release/release/v1.16.15/bin/linux/amd64/kubectl" \
    && chmod +x ./kubectl \
    && mv ./kubectl /usr/local/bin/kubectl \
