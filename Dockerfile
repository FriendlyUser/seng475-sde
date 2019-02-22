FROM ubuntu:18.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
wget gpg dirmngr gpg-agent build-essential checkinstall tk-dev \
libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev \
libgdbm-dev libc6-dev libbz2-dev \
python-dev \
install python3 \
install texinfo 
WORKDIR /sde
# Copy the installation files over
COPY / .

RUN python3 --version && python --version

# Make new directory for installation
RUN chmod +x installer && ./installer -d /usr/local/sde -e default -f || true