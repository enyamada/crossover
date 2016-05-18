#
# Cookbook Name:: crossover
# Recipe:: icinga
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
# Install icinga


package "icinga packages" do
    package_name ["icinga2", "nagios-plugins"]
end

package "helper packages" do
    package_name ["wget", "mailx", "sendmail", "gcc", "httpd"]
end

service "icinga2" do
  action [:enable, :start]
end



# Copies config files to the system
cookbook_file '/tmp/icinga2.tgz' do
  source 'icinga2.tgz'
  owner 'root'
  group 'root'
  mode '0600'
end


cookbook_file '/tmp/icingaweb2.tgz' do
  source 'icingaweb2.tgz'
  owner 'root'
  group 'root'
  mode '0600'
end


# Copying config files
execute 'setting config files' do
  command "tar -C /etc -xzf /tmp/icinga2.tgz && tar -C /etc -xzf /tmp/icingaweb2.tgz && touch /etc/icinga2/z-chef.txt"
  not_if { File.exist?("/etc/icinga2/z-chef.txt") }
end




