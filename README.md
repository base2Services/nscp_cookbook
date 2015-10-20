# nscp

Installs nsclient++ aka nscp.

Can use chocolatey.  Default is to download package from www(github).

Optional override download in a wrapper like this:
\#node.default["nscp"]["app\_name"] = "NSCP-0.4.3.143-x64.msi"
local\_nscp\_exe\_path = "#{Chef::Config[:file\_cache\_path]}\\#{node["nscp"]["app\_name"]}"
node.default["nscp"]["app\_path"] = local\_nscp\_exe\_path
include\_recipe "nscp"

