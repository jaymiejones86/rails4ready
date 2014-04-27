#
# Cookbook Name:: rails4box
# Recipe:: nginx
#
# Copyright 2014, pixelstack
#
# All rights reserved - Do Not Redistribute
#

service 'nginx' do
  supports :status => true, :restart => true, :reload => true
  action :start
end
