FROM ubuntu:18.04

# Make new directory for the files
# RUN mkdir sde 
# RUN ls

# Copy the installation files over
COPY / .
RUN ls

# Make new directory for installation

RUN ./installer -d seng475

