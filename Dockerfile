FROM python:3.6

# Copy the installation files over
COPY / .
RUN ls

# Make new directory for installation
RUN ./installer -d .

