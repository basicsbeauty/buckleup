################################################################
# Filename: buckleup/data_model/table_cleanup.sql
# Location: /home/ubuntu/Projects
# Project : 
# Date    : 2014-01-15
# User    : ubuntu
# Scope   : 
################################################################

# Constraints
    ALTER TABLE t_group_link    DROP FOREIGN KEY fk_group_link_user_link;
    ALTER TABLE t_group_link    DROP FOREIGN KEY fk_group_link_group_id;
    ALTER TABLE t_group         DROP FOREIGN KEY fk_group_user_id;
    ALTER TABLE t_user_link     DROP FOREIGN KEY fk_link_user_id;

# Tables
    DROP TABLE t_group_link;
    DROP TABLE t_group;
    DROP TABLE t_user_link;
    DROP TABLE t_user;
