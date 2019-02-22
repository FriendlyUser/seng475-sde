FROM python:3.6
RUN apt-get update && apt-get install python-dev -y && apt-get install texinfo -y
WORKDIR /sde
# Copy the installation files over
COPY / .
RUN ls

# Make new directory for installation
RUN chmod +x installer && ./installer -d /usr/local/sde -e default -f || true