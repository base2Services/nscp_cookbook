#should be started and enabled post install anyhow
service "nscp" do
  service_name "nscp"
  supports :start => true, :stop => true, :restart => true
  action [:enable]
end

template node["nscp"]["ini_path"] do
  action :create
  notifies :restart, "service[nscp]"
end
