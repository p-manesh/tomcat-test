FROM tomcat:8.0
RUN apt-get update
RUN apt install net-tools
RUN apt-get install -y jq
ADD settings.xml /usr/local/tomcat/conf/
ADD tomcat-users.xml /usr/local/tomcat/conf/
LABEL VERSION="1.0.77"
LABEL DEMO="1.0.77-SADD-200"
