module SupermarketApi
  class Client

    # Methods for the Users API.
    #
    # @see https://docs.chef.io/supermarket_api.html
    module Users

      # Show all information about a user
      #
      # This method returns all available information for the 
      # given user
      #
      # @return [Hashie::Mash] The properties of the cookbook.
      # @example
      #   client.user('sous-chefs')
      def user(username)
        get "/users/#{username}"
      end
    end
  end
end
