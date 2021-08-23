FROM centos:7
RUN yum -y update && \
    yum -y install httpd && \
    yum clean all

#Copy all data from local to container
COPY ./rohit.sh /
COPY rohity-1.0-SNAPSHOT.jar /

#Change Permission  
RUN chmod +x /rohit.sh

#Run Script on container 
ENTRYPOINT ["/rohit.sh"]

#Passing Arguments
CMD ["1","2","3"]


EXPOSE 80
