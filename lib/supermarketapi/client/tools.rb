module SupermarketApi
  class Client

    # Methods for the tools API.
    #
    # @see https://docs.chef.io/supermarket_api.html
    module Tools

      # Show all information about a tool
      #
      # This method returns all available information for the 
      # given tool
      #
      # @return [Hashie::Mash] The properties of the cookbook.
      # @example
      #   client.tool('berkshelf')
      def tool(tool_name)
        get "/tools/#{tool_name}"
      end

      # Tools search endpoint
      #
      # This method returns high level information for 
      # a number of tools based on search
      #
      # @return [Hashie::Mash] The properties of the cookbook.
      # @example
      #   client.tools-search(query='berk', start=0, items=100)
      def tools(query, start=0, items=50)
        options = {
          :start => start,
          :items => items,
          :q => query,
        }
        get "/tools-search", options
      end
    end
  end
end
