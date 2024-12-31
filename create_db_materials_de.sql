CREATE DATABASE materials_de
    WITH 
    OWNER = owner_username      --enter owner's username
    ENCODING = 'UTF8'          
    LC_COLLATE = 'en_US.UTF-8' 
    LC_CTYPE = 'en_US.UTF-8'   
    TABLESPACE = pg_default    -- default tablespace
    CONNECTION LIMIT = 100;      --number of concurrent connections allowed
