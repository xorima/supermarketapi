module SupermarketApi
  class Client

    # Methods for the Universe API.
    #
    # @see https://docs.chef.io/supermarket_api.html
    module Universe

      # Show all information about a user
      #
      # This method returns all available information for the 
      # supermarket
      #
      # @return [Hashie::Mash] The properties of the cookbook.
      # @example
      #   client.universe()
      def universe()
        get '/universe'
      end
    end
  end
end