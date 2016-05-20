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







