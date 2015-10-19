#
# Cookbook Name:: nscp
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

raise "32bit not supported " unless node['kernel']['machine'] == "x86_64"

#note that upstream chocolatey stopped working
if node["nscp"]["use_chocolatey"]
  include_recipe "chocolatey"
  chocolatey "nscp"
else
  windows_package node["nscp"]["application_name"] do
    source "#{app_path}"
    action :install
  end
end

