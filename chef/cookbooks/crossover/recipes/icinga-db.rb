#
# Cookbook Name:: crossover
# Recipe:: database
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
# Configure the MySQL client.


# icinga db has been dockerized. Install docker.
docker_installation 'default' do
  action [:create, :start]
end

# Pull latest image
docker_image 'enyamada/co-icinga-db' do
  action :pull
  notifies :redeploy, 'docker_container[icinga-db]'
end

docker_container 'icinga-db' do
  repo 'enyamada/co-icinga-db'
  port '3306:3306'
  host_name 'icinga-db'
  action :nothing
  volumes [ '/var/lib/mysql/:/var/lib/mysql' ]
  env [ "MYSQL_ROOT_PASSWORD=#{node['crossover']['database']['root_password']}" ]
end

