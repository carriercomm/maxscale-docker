FROM centos:6.6
MAINTAINER George Liu <https://github.com/centminmod/maxscale-docker>

RUN     rpm --import https://yum.mariadb.org/RPM-GPG-KEY-MariaDB && \
        yum -y update && \
        yum -y install libedit libaio && \
        rpm -i https://downloads.mariadb.com/software/mariadb-maxscale/configure-maxscale-repo-0.1.2.rpm && \
        yum -y install maxscale && \
        yum clean all && \
        cp /usr/local/mariadb-maxscale/etc/MaxScale_template.cnf /usr/local/mariadb-maxscale/etc/MaxScale.cnf

# ENVironment variable
ENV MAXSCALE_HOME /usr/local/mariadb-maxscale

# VOLUMEs to allow backup of config
VOLUME  ["/usr/local/mariadb-maxscale"]

# EXPOSE default MaxScale ports

## RW Split Listener
EXPOSE 4006

## Read Connection Listener
EXPOSE 4008

## Debug Listener
EXPOSE 4442 

## CLI Listener
EXPOSE 6603 

# The binary that is being executed
ENTRYPOINT ["/usr/local/mariadb-maxscale/bin/maxscale", "-d"]
