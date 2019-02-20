FROM ubuntu:18.04

ENV HOME /seng475
WORKDIR /seng475

RUN ls 
COPY . /
RUN ls 
COPY / .
RUN ls
RUN ./installer -d sde

