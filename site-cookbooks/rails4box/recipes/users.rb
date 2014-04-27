#
# Cookbook Name:: rails4box
# Recipe:: users
#
# Copyright 2014, pixelstack
#
# All rights reserved - Do Not Redistribute
#

user "#{node['deployer_user']['name']}" do
  password "#{node['deployer_user']['password']}"
  home "/home/#{node['deployer_user']['name']}"
  shell "#{node['deployer_user']['shell']}"
  gid "#{node['deployer_user']['ruby_provisioner']}"
  supports manage_home: true
end

execute "setup rvm script on user" do
  command "echo 'source /etc/profile.d/rvm.sh' >> /home/#{node['deployer_user']['name']}/.bashrc"
end
