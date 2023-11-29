FROM ubuntu:18.04


RUN apt-get update -y
RUN apt install curl -y
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
RUN . ~/.nvm/nvm.sh
RUN nvm install node

COPY nodey /opt/
RUN cd nodey
RUN npm install
RUN npm start



WORKDIR /opt/
