#
# Cookbook Name:: nscp
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

raise "32bit not supported " unless node['kernel']['machine'] == "x86_64"

if node["nscp"]["use_chocolatey"]
  include_recipe "chocolatey"
  chocolatey "nscp"
else
  version = node["nscp"]["version"] # "0.4.1.102"
  repo_path = ["nscp"]["repo_path"] #"http://files.nsclient.org/legacy"
  windows_package node["nscp"]["application_name"] do
    source "#{repo_path}/NSCP-#{version}-x64.msi"
    action :install
  end
end

