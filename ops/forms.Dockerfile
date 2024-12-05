from ubuntu:latest

run apt update -y
#workdir
run apt install vim -y
workdir /home/ubuntu/scripts

copy ./script .
run chmod u+x dir_spammer.sh
run ./dir_spammer.sh
run chmod u+x 03.sh
#cmd ["tldr","docker"]
#entrypoint ["tldr"]

cmd ["bash"]
#entrypoint["bash"]


