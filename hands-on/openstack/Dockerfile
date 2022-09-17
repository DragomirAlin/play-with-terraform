FROM ubuntu:20.04

WORKDIR /project
VOLUME /project

ARG TERRAFORM_VERSION
ARG GCLOUD_VERSION

RUN apt-get update && apt-get install --no-install-recommends -y \
 python3.9 \
 python3.9-dev \
 python3.9-venv \
 python3-pip \
 wget \
 unzip 

# OpenStack CLI
RUN pip install python-openstackclient
COPY openstack_credentials.yaml /etc/openstack/clouds.yaml
  
# Terraform
RUN wget -O /usr/bin/terraform_${TERRAFORM_VERSION}_linux_amd64.zip https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip
RUN unzip /usr/bin/terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/bin \
     && rm -f /usr/bin/terraform_${TERRAFORM_VERSION}_linux_amd64.zip

# # SSH setup
# COPY .ssh/${INFRA}/id_rsa /root/.ssh/id_rsa
# COPY .ssh/${INFRA}/id_rsa.pub /root/.ssh/id_rsa.pub

# RUN chmod 600 /root/.ssh/id_rsa

ENTRYPOINT ["bash", "entrypoint.sh"]