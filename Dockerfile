FROM alpine:latest

RUN apk add py-pip curl && \
 pip install --quiet --no-cache-dir awscli && \
 curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.23.0/bin/linux/amd64/kubectl && \
 chmod +x ./kubectl && mv ./kubectl /usr/bin/kubectl 

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

