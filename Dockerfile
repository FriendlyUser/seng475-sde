FROM ubuntu:18.04

RUN apt-get update && apt-get install -y --no-install-recommends \
ca-certificates \
wget \
xz-utils \
python-dev \
python3 \
texinfo 
WORKDIR /sde
# Copy the installation files over
COPY / .

RUN python3 --version && python --version

# Make new directory for installation
RUN chmod +x installer && ./installer -d /usr/local/sde -e default -f || true