#
# Cookbook Name:: crossover
# Recipe:: db-mysql
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
# Install mysql server docker



docker_installation 'default' do
  action :create
end



# Pull latest image
docker_image 'enyamada/co-db' do
  action :pull
  notifies :redeploy, 'docker_container[db]'
end

docker_container 'db' do
  repo 'enyamada/co-db'
  port '3306:3306'
  host_name 'mysql'
  action :nothing
  volumes [ '/var/lib/mysql/:/var/lib/mysql' ]
  env [ "MYSQL_ROOT_PASSWORD=#{node['crossover']['db']['admin_password']}" ]
end





