#
# Cookbook Name:: crossover
# Recipe:: db
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
# Install db server


include_recipe 'crossover::db-mysql'
include_recipe 'crossover::db-backup'






