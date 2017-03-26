FROM ubuntu:16.04

RUN sudo apt-get update && apt-get install -y openssh-server
RUN sudo mkdir /var/run/sshd
RUN sudo echo 'root:screencast' | chpasswd
RUN sudo sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]

