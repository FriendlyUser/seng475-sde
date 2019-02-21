FROM python:3.6


WORKDIR /sde
# Copy the installation files over
COPY / .
RUN ls

# Make new directory for installation
RUN ./installer -d . /usr/local/bin