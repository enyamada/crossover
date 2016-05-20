create user 'icingaweb'@'%' identified by "icingaweb";
create user 'icinga'@'%' identified by "icinga";
grant all privileges on icingaweb_db.* to 'icingaweb'@'%';
grant all privileges on icinga.* to 'icinga'@'%';
