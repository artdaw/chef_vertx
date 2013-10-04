#
# Cookbook Name:: vertx
# Recipe:: default
# 

include_recipe "java"
include_recipe "ark"


if node[:vertx][:url].nil? || node[:vertx][:url].empty?
	delimiter = node[:vertx][:flavor].to_s == '1' ? "." : "-"
	flavor = node[:vertx][:flavor]
	ark "vertx" do
  		url node[:vertx][flavor][:url] + node[:vertx][flavor][:version] + delimiter + "final.zip"
 		home_dir node[:vertx][:home]
  		version node[:vertx][flavor][:version]
  		append_env_path true
  		action :install
	end
else
	ark "vertx" do
  		url node[:vertx][:url]
 		home_dir node[:vertx][:home]
  		append_env_path true
  		action :install
	end
end  


