#
# Cookbook Name:: users
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

group 'wordpress' do
  group_name 'wordpress'
  gid 999
  action :create
end

user 'wordpress' do
  comment  'for wordpress'
  group    'wordpress'
  home     '/home/wordpress'
  shell    '/bin/bash'
  supports :manage_home => true
  password "$1$ayBb8Wl6$mDR8cPmYNI48B9ZCSX3RJ1"
  action   [:create]
end


