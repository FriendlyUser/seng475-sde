FROM ubuntu:14.04

RUN apt-get update && apt-get install -y --no-install-recommends \
gpg dirmngr gpg-agent build-essential checkinstall tk-dev \
libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev \
libgdbm-dev libc6-dev libbz2-dev \
python-dev \
python3 \
texinfo 
WORKDIR /sde
# Copy the installation files over
COPY / .

RUN python3 --version && python --version

# Make new directory for installation
RUN chmod +x installer && ./installer -d /usr/local/sde -e default -f || true