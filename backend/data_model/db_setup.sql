################################################################
# Filename: buckleup/data_model/db_setup.sql
# Location: /home/ubuntu/Projects
# Project : 
# Date    : 2014-01-15
# User    : ubuntu
# Scope   : 
#  - db_buckleup creation
#  - u_buckleup and u_buckleup_ro creation
#  - Grant priviliges
################################################################

# Database
    CREATE DATABASE db_buckleup;

# Users
    CREATE USER 'u_buckleup'@'localhost' IDENTIFIED BY 'b';
    CREATE USER 'u_buckleup_ro'@'localhost' IDENTIFIED BY 'b';
    
# Priviliges
    GRANT ALL ON db_buckleup.* TO 'u_buckleup'@'localhost';
    GRANT SELECT ON db_buckleup.* TO 'u_buckleup_ro'@'localhost';    
