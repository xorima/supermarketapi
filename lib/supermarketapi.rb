require 'json'
require 'httparty'
require 'hashie'
require 'supermarketapi/version'
require 'supermarketapi/default'
require 'supermarketapi/client'

module SupermarketApi
  class << self
    def client(options={})
      @client = SupermarketApi::Client.new(options) unless @client
      @client
    end

    private 

    def method_missing(name, *args, &block)
      SupermarketApi.client.send(name, *args, &block)
    end

  end
end
