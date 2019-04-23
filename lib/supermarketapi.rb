require 'json'
require 'httparty'
require 'hashie'
require 'supermarketapi/client'
require 'supermarketapi/version'

module Supermarketapi
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

