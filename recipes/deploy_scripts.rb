wsf_scripts_files = node["nscp"]["wsf_scripts_files"]

wsf_scripts_files.each do |f|
  log f
  cookbook_file f do
    path "#{node["nscp"]["script_path"]}\\#{f}"
  end
end


