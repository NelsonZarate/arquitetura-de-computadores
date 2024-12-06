FROM ubuntu:latest

RUN apt update -y
RUN apt install vim -y

WORKDIR /home/ubuntu/scripts

# Copiar a pasta 'script' antes de aplicar permissões
COPY ./script .
RUN chmod -R u+x .


#RUN chmod u+x dir_spammer.sh
RUN ./dir_spammer.sh

CMD ["bash"]

