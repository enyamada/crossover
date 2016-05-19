#
# Cookbook Name:: crossover
# Recipe:: web
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
# Install web server


include_recipe 'crossover::web-apache'
include_recipe 'crossover::web-log'






