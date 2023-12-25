FROM ubuntu:18.04
ENV TARGETPLATFORM=linux/amd64
ARG TARGETPLATFORM=linux/amd64
RUN apt-get update && apt-get install -y gnupg dirmngr wget
RUN echo "deb http://apt.postgresql.org/pub/repos/apt/ bionic-pgdg main" > /etc/apt/sources.list.d/pgdg.list
RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y software-properties-common  postgresql-client-14
RUN apt-get update && apt-get install -y openssh-client sshpass
RUN ssh-keygen -f /root/.ssh/id_rsa

