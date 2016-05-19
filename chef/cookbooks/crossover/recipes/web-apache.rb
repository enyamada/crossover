#
# Cookbook Name:: crossover
# Recipe:: web-apache
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
# Install web server docker



docker_installation 'default' do
  action :create
end



# Pull latest image
docker_image 'enyamada/co-web' do
  action :pull
  notifies :redeploy, 'docker_container[web]'
end

docker_container 'web' do
  repo 'enyamada/co-web'
  port '80:80'
  host_name 'www'
  action :nothing
  volumes [ '/usr/local/apache2/logs:/usr/local/apache2/logs' ]
end



