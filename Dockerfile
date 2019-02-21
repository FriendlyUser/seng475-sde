FROM grandfleet/seng475-sde:4.0.13
RUN apt-get update && apt-get install python-dev && apt-get install texinfo -y
WORKDIR /sde
# Copy the installation files over
COPY / .
RUN ls

# Make new directory for installation
RUN chmod +x installerRest && ./installerRest -d /usr/local/sde -e default -f || true