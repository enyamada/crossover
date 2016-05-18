#
# Cookbook Name:: crossover
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "selinux::permissive"
include_recipe 'crossover::database'

rpm_package 'icinga-repo' do
   source "http://packages.icinga.org/epel/7/release/noarch/icinga-rpm-release-7-1.el7.centos.noarch.rpm"
end

rpm_package 'epel-repo' do
   source "http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-6.noarch.rpm"
end

rpm_package 'remi-repo' do
   source "http://rpms.famillecollet.com/enterprise/remi-release-7.rpm"
end

package "icinga packages" do
    package_name ["icinga2", "nagios-plugins"]
end

package "helper packages" do
    package_name ["wget", "mailx", "sendmail", "gcc"]
end

service "icinga2" do
  action [:enable, :start]
end



remote_directory "/usr/lib64/nagios/plugins/libexec" do
  source "plugins"
  owner "root"
  group "root"
  mode "0755"
  files_mode "0755"
  action :create
end

remote_directory "/etc/icinga2" do
  source "icinga2"
  owner "icinga"
  group "icinga"
  mode "0750"
  files_mode "0740"
  action :create
end

package "icingaweb db packages" do
    package_name ["mariadb", "mariadb-server", "icinga2-ido-mysql"]
    action :remove
end



remote_directory "/etc/icingaweb2" do
  source "icingaw2"
  owner "apache"
  group "icingaweb2"
  mode "0660"
  files_mode "0660"
  action :create
end
