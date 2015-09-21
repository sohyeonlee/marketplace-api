MarketPlaceApi::Application.routes.draw do
  # Api definition
  namespace :api do, defaults: {format: :json},
    constraints: {subdomain: 'api'}, path: '/' do
    # We are going to list our resources here
  end
end
