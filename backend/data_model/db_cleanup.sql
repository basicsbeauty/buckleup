################################################################
# Filename: buckleup/data_model/db_cleanup.sql
# Location: /home/ubuntu/Projects
# Project : 
# Date    : 2014-01-15
# User    : ubuntu
# Scope   : 
#  - Delete { Priviliges, Users, Database}
################################################################

# Priviliges
    REVOKE ALL ON db_buckleup.* FROM 'u_buckleup'@'localhost';
    REVOKE SELECT ON db_buckleup.* FROM 'u_buckleup_ro'@'localhost';

# Users
    DROP USER 'u_buckleup'@'localhost';
    DROP USER 'u_buckleup_ro'@'localhost';

# Database
    DROP DATABASE db_buckleup;
