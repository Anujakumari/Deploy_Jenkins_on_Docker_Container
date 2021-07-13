FROM centos:latest

RUN yum install wget -y

#This command will download repository for jenkins
RUN wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo

#This command will import key from jenkins
RUN rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

RUN yum install jenkins -y
RUN yum install java-11-openjdk.x86_64 -y
RUN yum install git -y
RUN yum install sudo -y
RUN yum install python3 -y

COPY mail.py /

#This will give same power as root is having to jenkins
RUN echo -e "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

#This will Expose the port 8080 for jenkins services
EXPOSE 8080

CMD ["java","-jar","/usr/lib/jenkins/jenkins.war"]
