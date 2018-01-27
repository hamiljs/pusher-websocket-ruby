module PusherClient
  
  def initialize(host)
    HOST = host
    WS_PORT = 80
    WSS_PORT = 443
  end

  def self.logger
    @logger ||= begin
      require 'logger'
      Logger.new(STDOUT)
    end
  end

  def self.logger=(logger)
    @logger = logger
  end
end

require 'pusher-client/version'
require 'pusher-client/websocket'
require 'pusher-client/socket'
require 'pusher-client/channel'
require 'pusher-client/channels'
