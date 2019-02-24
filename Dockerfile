FROM ubuntu:18.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
gpg dirmngr gpg-agent build-essential checkinstall tk-dev \
libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev \
ca-certificates \
wget \ 
xz-utils \
python-dev \
python3 \
git \ 
texinfo \
libeigen3-dev \
libcgal-dev \ 
gdb 

# https://github.com/PX4/Firmware/issues/6408
# libeigen3-dev libcgal-dev packages inside
WORKDIR /sde
# Copy the installation files over
COPY / .

RUN python3 --version && python --version

# Make new directory for installation
RUN chmod +x installerDLI && ./installerDLI -d /usr/local/sde -e default -f || true