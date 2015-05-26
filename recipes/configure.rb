service "nscp" do
  service_name "nscp"
  supports :start => true, :stop => true, :restart => true
  action [:enable]
end

ini_file = "#{node['nscp']['app_path']}\\nsclient.ini"

template ini_file do
  action :create
  notifies :restart, "service[nscp]"
end
