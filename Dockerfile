FROM ubuntu:20.04
LABEL email="srujan4a0@gmail.com"
LABEL VERSION=1.0
RUN apt update && \
    apt install -y wget jq unzip curl && \
    apt install -y net-tools iputils-ping && \
    apt install -y nginx && \
    mkdir /myscripts
RUN apt install -y cowsay
COPY scripts.sh /myscripts/scripts.sh
ADD scripts.sh /myscripts/addscripts.sh
ADD https://releases.hashicorp.com/terraform/1.0.2/terraform_1.0.2_linux_amd64.zip /myscripts/Terraform.zip
RUN cd /myscripts && unzip Terraform.zip
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]


