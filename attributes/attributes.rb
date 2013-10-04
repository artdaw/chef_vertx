#
# Cookbook Name:: vertx 
# Attributes:: default
# 
#
default[:vertx][:home]       = '/usr/local/vertx'
default[:vertx][:flavor]	 = '2'
default[:vertx][:url]		 = nil

case node[:vertx][:flavor]

# vertx 1.x
when '1'
default[:vertx]['1'][:version]    = '1.3.1'
default[:vertx]['1'][:url]        = 'http://vertx.io/vertx-downloads/downloads/vert.x-'

# vertx 2.x
when '2'
default[:vertx]['2'][:version]    = '2.0.1'
default[:vertx]['2'][:url]        = 'http://dl.bintray.com/vertx/downloads/vert.x-'
end


