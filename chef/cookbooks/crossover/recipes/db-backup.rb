#
# Cookbook Name:: crossover
# Recipe:: db-backup
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
# Install script to backup mysql to s3


# Install awscli
python_runtime '2'
python_package 'awscli'

# Install mail and sendmail to send notifications in case an error occurs
package "mail and sendmail" do
   package_name ['mailx', 'sendmail']
end

cookbook_file "/usr/local/bin/mysqlbackup" do
  source "mysqlbackup/mysqlbackup"
  mode "0755"
  owner "root"
  group "root"
end


cron "logs periodic backup" do
  minute "0"
  hour   "19"
  user   "root"
  command "/usr/local/bin/logbackup --numdays=7 --log-dir=/usr/local/apache2/logs --bucket=crossover-sa-east-1"
end

directory "/root/.aws" do
  owner "root"
  mode  "0755"
  group "root"
end

template '/root/.aws/credentials' do
  source 'aws/credentials.erb'
  mode '0600'
  owner 'root'
  group 'root'
  variables({
     :key_id => node['crossover']['aws']['AWS_KEY_ID'],
     :secret => node['crossover']['aws']['AWS_SECRET_ACCESS_KEY'],
  })
end

template '/root/parameters.ini'
  source 'mysqlbackup/parameters.erb'
  mode '0600'
  owner 'root'
  group 'root'
  variables({
     :user     => node['crossover']['db']['admin_user'],
     :password => node['crossover']['db']['admin_password'],
     :host     => node['crossover']['db']['host'],
     :bucket   => node['crossover']['db']['s3_bucket']
  })
end



