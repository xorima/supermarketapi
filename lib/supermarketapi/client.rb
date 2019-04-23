require 'supermarketapi/client/cookbook'
module SupermarketApi
  class Client

    include HTTParty
    base_uri Default::API_ENDPOINT

    include SupermarketApi::Client::Cookbooks
    def initialize(options={})
    end

    private

      def get(url, params={})
        response = self.class.get url, :query => params
        Hashie::Mash.new response.parsed_response
      end
  end
end
