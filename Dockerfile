FROM ubuntu:20.04

WORKDIR /home
COPY . .

RUN chmod +x install-docker.sh
RUN ./install-docker.sh

RUN chmod +x install-aws-cli.sh
RUN ./install-aws-cli.sh

RUN chmod +x install-k8s-cli.sh
RUN ./install-k8s-cli.sh

RUN aws --version
RUN docker -v
RUN kubectl version --short --client

ENTRYPOINT [""]