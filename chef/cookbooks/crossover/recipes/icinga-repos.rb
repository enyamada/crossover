#
# Cookbook Name:: crossover
# Recipe:: repos
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
# Install yum repos

rpm_package 'icinga-repo' do
   source "http://packages.icinga.org/epel/7/release/noarch/icinga-rpm-release-7-1.el7.centos.noarch.rpm"
end

rpm_package 'epel-repo' do
   source "http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-6.noarch.rpm"
end

rpm_package 'remi-repo' do
   source "http://rpms.famillecollet.com/enterprise/remi-release-7.rpm"
end


