# MySQL

## Task 0:
## Install MySQL
MySQL 5.7.x installed on both web-01 and web-02.

## Task 1:
## Let us in!
Creating a user 'holberton_user' with the REPLICATION CLIENT privilege.

## Task 2:
## If only you could see what I've seen with your eyes
Creating database tyrell_corp, creating a table named nexus6 within tyrell_corp and granting select privilege to holberton_user on the table.

## Task 3:
## Quite an experience to live in fear, isn't it?
Creating a user 'replica_user', granting the REPLICATION SLAVE privilege to the replica_user and granting select privilege to holberton_user on mysql.user table.

## Task 4:
## Setup a Primary-Replica infrastructure using MySQL
Edited mysql config files to build a MASTER-SLAVE DATABASE infrastructure. The MASTER database is located on the web-01 server and the SLAVE database is on the web-02 server. 

##Task 5:
## MySQL backup
A bash script that generates a MySQL dump and creates a compressed archive of all databases. The archive is named with the format of 'day-month-year.tar.gz'.
