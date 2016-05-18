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
