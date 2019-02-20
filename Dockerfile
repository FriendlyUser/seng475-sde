FROM python:3.6

# Make new directory for the files
ENV HOME /seng475
WORKDIR /seng475

# Copy the installation files over
COPY / .
RUN ls

# Make new directory for installation
RUN ./installer -d sde

