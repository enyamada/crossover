#
# Cookbook Name:: crossover
# Recipe:: web
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
# Install web server


python_runtime '2'

python_package 'awscli'

 


docker_installation 'default' do
  action :create
end


#docker_container 'kitchen-cache' do
#  repo 'someara/kitchen-cache'
#  tag '1:0'
#  port '80:80'
#  host_name 'www'
#  domain_name 'computers.biz'
#  volumes [ '/usr/local/apache2/logs:/usr/local/apache2/logs' ]
#end



# Pull latest image
docker_image 'enyamada/co-web' do
#  tag '1.0'
  action :pull
#  notifies :redeploy, 'docker_container[co-web]'
end

docker_container 'web' do
  repo 'enyamada/co-web'
  port '80:80'
  host_name 'www'
#  domain_name 'computers.biz'
  volumes [ '/usr/local/apache2/logs:/usr/local/apache2/logs' ]
end





