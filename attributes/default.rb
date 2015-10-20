#upstream chocolatey package is broken
default["nscp"]["use_chocolatey"] = false

default["nscp"]["install_path"] = "C:\\Program Files\\NSClient++"
default["nscp"]["script_path"] = "#{node["nscp"]["install_path"]\\scripts"

#https://github.com/mickem/nscp/releases/download/0.4.3.143/NSCP-0.4.3.143-x64.msi
#https://github.com/mickem/nscp/releases/download/0.4.3.143/NSCP-0.4.3.143-Win32.msi
#only tested/working for 64 bit so far

default["nscp"]["application_name"] = "NSClient++ (x64)"
default["nscp"]["arch_extension"] = "x64"
default["nscp"]["version"] =  "0.4.3.143"
default["nscp"]["app_name"] = "NSCP-#{node["nscp"]["version"]}-#{node["nscp"]["arch_extension"]}.msi"
default["nscp"]["repo_path"] = "https://github.com/mickem/nscp/releases/download/#{node["nscp"]["version"]}"
default["nscp"]["app_path"] = "#{node["nscp"]["repo_path"]}\\#{node["nscp"]["app_name"]}"

default["nscp"]["allowed_hosts"] = ["127.0.0.1"]

default["nscp"]["wsf_scripts"] = [ "check_hwinfo" ]
default["nscp"]["wsf_scripts_files"] = [ "check_hwinfo.wsf" ]
default["nscp"]["2arg_ps_scripts"] = []
default["nscp"]["ps_scripts"] = []
