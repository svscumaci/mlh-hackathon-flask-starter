FROM ubuntu/postgres:14-22.04_edge
RUN apt update && apt upgrade
RUN apt install sudo
RUN sudo apt install git
RUN git config --global user.email "svscumaci@knox.edu"
RUN git config --global user.name "svscumaci"
RUN sudo apt install python3
RUN sudo apt install python3-pip
RUN apt-get install libpq-dev
RUN pip install -r requirements.txt
RUN pip uninstall python-dotenv
RUN pip install python-dotenv==0.17.1