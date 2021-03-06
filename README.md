maxscale-docker
===============

This project is a Docker container for MaxScale. 

Base [docker image](http://www.docker.io) to run a [MaxScale](https://mariadb.com/products/mariadb-maxscale) server

    MariaDB MaxScale is an open-source, database-centric proxy that works with MariaDB Enterprise, MariaDB Enterprise Cluster, MariaDB 5.5, MariaDB 10 and Oracle MySQL®. 
    It’s pluggable architecture is designed to increase flexibility and aid customization. Built upon a lightweight, high-speed networking core designed to facilitate throughput.
    MariaDB MaxScale runs between the client application and the database cluster offering connection and statement-based load balancing. 
    MariaDB MaxScale allows scaling of an organization's database infrastructure while keeping the needs of DBAs, Developers and Data Architects in mind.

## Getting the container

The container is very small and available on the Docker Index:

    docker pull centminmod/maxscale-docker

## Using the container

Just trying out MaxScale.

If you just want to run a single instance of MaxScale server to try out its functionality:

    docker run -d centminmod/maxscale-docker

## Build the container

To create the image `centminmod/maxscale-docker`, execute the following command on the maxscale-docker folder:

    docker build -t centminmod/maxscale-docker .

