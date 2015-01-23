#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "apt"

package 'nginx' do
        action :install
end

service 'nginx' do
        action [ :enable, :start]
end

directory '/usr/share/nginx/www' do
end

cookbook_file "/usr/share/nginx/www/index.html" do
        source "index.html"
        mode "0644"
end 

cookbook_file "/etc/nginx/sites-available/default" do
	source "default"
	mode "0644"
end
