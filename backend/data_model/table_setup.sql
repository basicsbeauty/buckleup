################################################################
# Filename: buckleup/backend/data_model/table_setup.sql
# Location: /home/ubuntu/Projects
# Project : 
# Date    : 2014-01-15
# User    : ubuntu
# Scope   : 
################################################################

####################################################
# Database: Use
####################################################
    USE db_buckleup;

####################################################
# Tables
####################################################

    ####################################################
    # Objects
    ####################################################

    # User: t_user
        CREATE TABLE t_user (
            serial          SMALLINT        UNSIGNED    UNIQUE KEY      AUTO_INCREMENT,
            id              SMALLINT        UNSIGNED    PRIMARY KEY,
            pno                  INT        UNSIGNED    NOT NULL,
            status          ENUM( 'Active', 'Suspended', 'Blocked')     NOT NULL,
            create_ts       DATETIME,
            update_ts       DATETIME);

    # User: Link:
        CREATE TABLE t_user_link (
            serial          SMALLINT        UNSIGNED    UNIQUE KEY      AUTO_INCREMENT,
            id              SMALLINT        UNSIGNED    PRIMARY KEY,
            uid             SMALLINT        UNSIGNED    NOT NULL,
            contact_pno          INT        UNSIGNED    NOT NULL,
            contact_name    VARCHAR(64),
            create_ts       DATETIME,
            update_ts       DATETIME,
            CONSTRAINT      fk_link_user_id FOREIGN KEY (uid)   REFERENCES t_user(id) ON UPDATE CASCADE ON DELETE RESTRICT);

    # User: Group:
        CREATE TABLE t_group (
            serial          SMALLINT        UNSIGNED    UNIQUE KEY      AUTO_INCREMENT,
            id              SMALLINT        UNSIGNED    PRIMARY KEY,
            uid             SMALLINT        UNSIGNED    NOT NULL,
            name            VARCHAR(64)                 NOT NULL,
            create_ts       DATETIME,
            update_ts       DATETIME,
            CONSTRAINT      fk_group_user_id FOREIGN KEY (uid)   REFERENCES t_user(id) ON UPDATE CASCADE ON DELETE RESTRICT);

    # User: Group: Link
        CREATE TABLE t_group_link (
            serial          SMALLINT        UNSIGNED    UNIQUE KEY      AUTO_INCREMENT,
            id              SMALLINT        UNSIGNED    PRIMARY KEY,
            gid             SMALLINT        UNSIGNED    NOT NULL,
            lid             SMALLINT        UNSIGNED    NOT NULL,
            create_ts       DATETIME,
            update_ts       DATETIME,
            CONSTRAINT      fk_group_link_group_id     FOREIGN KEY (gid)   REFERENCES t_group(id) ON UPDATE CASCADE ON DELETE RESTRICT,
            CONSTRAINT      fk_group_link_user_link    FOREIGN KEY (lid)   REFERENCES t_user_link(id) ON UPDATE CASCADE ON DELETE RESTRICT);
