FROM ubuntu:18.04

# Make new directory for the files
ENV HOME /seng475
WORKDIR /seng475

# Copy the installation files over
COPY / .
RUN ls

# Make new directory for installation
RUN mkdir sde 
RUN ls
RUN ./installer -d sde

