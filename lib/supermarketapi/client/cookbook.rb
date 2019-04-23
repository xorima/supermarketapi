module SupermarketApi
  class Client

    # Methods for the Cookbook API.
    #
    # @see https://docs.chef.io/supermarket_api.html
    module Cookbooks

      # Show all information about a cookbook
      #
      # This method returns all available information for the 
      # given cookbook 
      #
      # @return [Hashie::Mash] The properties of the cookbook.
      # @example
      #   client.cookbook('apache2')
      def cookbook(cookbook_name)
        get "/cookbooks/#{cookbook_name}"
      end

      # Show informatiom about a cookbook version
      #
      # This method returns all available information for the 
      # given cookbook version
      #
      # @return [Hashie::Mash] The properties of the cookbook.
      # @example
      #   client.cookbook('apache2', 'latest')
      def cookbook_version(cookbook_name, cookbook_version)
        get "/cookbooks/#{cookbook_name}/versions/#{cookbook_version}"
      end

      # Show information about all cookbook
      #
      # This method returns high level information for 
      # a number of cookbooks 
      #
      # @return [Hashie::Mash] The properties of the cookbook.
      # @example
      #   client.cookbooks(user='sous-chefs', start=0, items=100, order=:most_followed)
      def cookbooks(user=nil, start=0, items=50, order=:most_followed)
        options = {
          :start => start,
          :items => items,
          :order => order,
        }
        options[:user] = user if user
        get "/cookbooks", options
      end
    end
  end
end