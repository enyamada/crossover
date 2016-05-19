#
# Cookbook Name:: crossover
# Recipe:: web-log
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
# Install script to backup logs to s3


# Install awscli
python_runtime '2'
python_package 'awscli'


cookbook_file "/usr/local/bin/logbackup" do
  source "logbackup/logbackup"
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

template '/root/.aws/config' do
  source 'aws/config.erb'
  mode '0600'
  owner 'root'
  group 'root'
  variables({
     :region => node['crossover']['aws']['AWS_DEFAULT_REGION'],
  })
end

