require 'supermarketapi/client/cookbook'
require 'supermarketapi/client/tools'
require 'supermarketapi/client/universe'
require 'supermarketapi/client/users'

module SupermarketApi
  class Client

    include HTTParty
    base_uri Default::API_ENDPOINT

    include SupermarketApi::Client::Cookbooks
    include SupermarketApi::Client::Tools
    include SupermarketApi::Client::Universe
    include SupermarketApi::Client::Users
    def initialize(options={})
    end

    private

      def get(url, params={})
        response = self.class.get url, :query => params
        Hashie::Mash.new response.parsed_response
      end
  end
end
