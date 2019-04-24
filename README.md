# Supermarket API

This gem is a simple and easy-to-use wrapper for Chef's Supermarket API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'supermarketapi'
```

And then execute:

```bash
bundle install
```

Or install it yourself as:

```bash
gem install supermarketapi
```

## Usage

To use the API methods, you'll need to instantiate a new client and use the API methods.

```ruby
# Create a new client
client = SupermarketApi.client()
```

### Cookbooks

#### cookbook

This method will return all metadata about the given cookbook in an hashie.mash

```ruby
client.cookbook('apache2')
```

#### cookbook_version

This method retrieves information about the cookbook version and can be used to find the latest version of a cookbook

```ruby
client.cookbook_version('apache2', 'latest')
```

```ruby
client.cookbook_version('apache2', '7.0.0')
```

#### cookbooks

This method searches for cookbooks. It takes the following parameters:

|name     |required |type     |default          |description|
|---------|---------|-------- |-----------------|-----------|
|`:user`  |Optional | String  |`nil`            | this is the name of the user to search|
|`:start` |Optional | Integer |`0`              | Pagination page to start on |
|`:items` |Optional | Integer |`50`             | Number of items to return |
|`:order` |Optional | Symbol  |`:most_followed` | Search method, available options are: `:recently_updated`, `:recently_added`, `:most_downloaded`, or `:most_followed`

```ruby
client.cookbooks(
  :user        => 'sous-chefs',
  :start     => 1,
  :items   => 50,
  :order => :recently_updated,
)
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
