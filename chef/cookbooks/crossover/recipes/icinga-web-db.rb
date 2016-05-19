#
# Cookbook Name:: crossover
# Recipe:: database
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
# Configure the MySQL client.


# Create the database instance.
mysql_database node['crossover']['database']['web_dbname'] do
  connection(
    :host => node['crossover']['database']['host'],
    :username => node['crossover']['database']['root_username'],
    :password => node['crossover']['database']['root_password']
  )
  action :create
end

# Add a database user.
mysql_database_user 'icingaweb' do
  connection(
    :host => node['crossover']['database']['host'],
    :username => node['crossover']['database']['root_username'],
    :password => node['crossover']['database']['root_password']
  )
  password      node['crossover']['database']['web_icinga_password']
  database_name node['crossover']['database']['web_dbname']
  host          '%'

  action [:create, :grant]
end



# Copies and applies the saved icingaweb_db content
cookbook_file '/tmp/icingaweb_db.sql' do
  source 'icingaweb_db.sql'
  owner 'root'
  group 'root'
  mode '0600'
end


# restoring
execute 'Restore icingaweb_db' do
  command "mysql -uroot -p#{node['crossover']['database']['root_password']} < /tmp/icingaweb_db.sql  && touch /etc/icinga2/zz-chef.txt" 
  not_if { File.exist?("/etc/icinga2/zz-chef.txt") }
end

