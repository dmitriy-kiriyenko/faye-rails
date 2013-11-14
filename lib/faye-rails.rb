require 'faye'
require 'faye-rails/version'
require 'faye-rails/middleware'
require 'faye-rails/server_list'

require 'faye-rails/controller'
require 'faye-rails/rack_adapter'
require 'faye-rails/filter'

module FayeRails
  if defined? ::Rails
    class Engine < ::Rails::Engine
    end
  end

  def self.servers
    @servers ||= ServerList.new
  end

  def self.server(where=nil)
    if where
      servers.at(where).first
    else
      servers.first
    end
  end

  def self.clients
    servers.map(&:get_client)
  end

  def self.client(where=nil)
    if where
      servers.at(where).first.get_client
    else
      servers.first.get_client
    end
  end

end
