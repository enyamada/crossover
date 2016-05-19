#
# Cookbook Name:: crossover
# Recipe:: icinga
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
# Install icinga-web

package "icinga web packages" do
    package_name ["icinga2-ido-mysql", "icingaweb2", "icingacli"]
end

service "icinga2" do
  action [:restart]
end

execute 'add apache to other groups' do
  command 'usermod -a -G icingacmd apache'
end


cookbook_file '/etc/php.ini' do
  source 'php.ini'
  owner 'root'
  group 'root'
  mode '0644'
end


