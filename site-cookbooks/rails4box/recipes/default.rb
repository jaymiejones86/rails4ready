#
# Cookbook Name:: rails4box
# Recipe:: default
#
# Copyright 2014, pixelstack
#
# All rights reserved - Do Not Redistribute
#

execute "apt-get-update" do
  ignore_failure true
  timeout 36000
end

execute "set language" do
  command "sudo locale-gen en_AU.UTF-8"
end
