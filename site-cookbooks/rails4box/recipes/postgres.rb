#
# Cookbook Name:: rails4box
# Recipe:: postgres
#
# Copyright 2014, pixelstack
#
# All rights reserved - Do Not Redistribute
#

include_recipe "database::postgresql"
include_recipe "postgresql::server"
include_recipe "postgresql::ruby"

postgresql_database "#{node['pg']['db_name']}" do
  connection(
    :host => node['pg']['host'],
    :port => 5432,
    :username => 'postgres',
    :password => node['pg']['password']
  )
  action :create
end

postgresql_connection_info = {
  :host     => node['pg']['host'],
  :port     => 5432,
  :username => "postgres",
  :password => node['pg']['password']
}

database_user node['pg']['username'] do
  connection postgresql_connection_info
  password   node['pg']['password']
  provider   Chef::Provider::Database::PostgresqlUser
  action     :create
end

# service "postgresql" do
#   service_name "postgresql"
#   supports :restart => true, :status => true, :reload => true
#   action [:enable, :start]
# end
