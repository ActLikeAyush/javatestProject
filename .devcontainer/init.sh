#!/bin/bash

# Start MySQL service
service mysql start

# Output information about Java, Tomcat, and MySQL
java -version
/usr/local/tomcat/bin/version.sh
mysql --version