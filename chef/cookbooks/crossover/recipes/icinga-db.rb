#
# Cookbook Name:: crossover
# Recipe:: database
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
# Configure the MySQL client.

# Configure the MySQL service.
mysql_service 'default' do
  port '3306'
  version '5.5'
  initial_root_password node['crossover']['database']['root_password']
  action [:create, :start]
end

# Configure the MySQL client.
mysql_client 'default' do
  action :create
end

# Install the mysql2 Ruby gem.
mysql2_chef_gem 'default' do
  action :install
end


# Create the database instance.
mysql_database node['crossover']['database']['dbname'] do
  connection(
    :host => node['crossover']['database']['host'],
    :username => node['crossover']['database']['root_username'],
    :password => node['crossover']['database']['root_password']
  )
  action :create
end

# Add a database user.
mysql_database_user 'icinga' do
  connection(
    :host => node['crossover']['database']['host'],
    :username => node['crossover']['database']['root_username'],
    :password => node['crossover']['database']['root_password']
  )
  password      node['crossover']['database']['icinga_password']
  database_name node['crossover']['database']['dbname']
  host          '%'

  action [:create, :grant]
end

# Copies sql script to local system
cookbook_file '/tmp/mysql.txt' do
  source 'mysql.sql'
  owner 'root'
  group 'root'
  mode '0600'
end


# Initialize database
execute 'initialize database' do
  command "mysql -h 127.0.0.1 -u root -p#{node['crossover']['database']['root_password']} -D icinga < /tmp/mysql.sql"
  not_if  "mysql -h 127.0.0.1 -u root -p#{node['crossover']['database']['root_password']} -D icinga  -e 'describe icinga_hosts;'"
end

#ruby_block 'edit conf' do
#  block do
#    p = node['crossover']['database']['root_password']
#
#    puts "password=#{node['crossover']['database']['root_password']}" 
#  end
#end
