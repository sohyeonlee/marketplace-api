require 'api_constraints'

MarketPlaceApi::Application.routes.draw do
  devise_for :users
  # Api definition
  namespace :api, defaults: {format: :json},
  constraints: {subdomain: 'api'}, path: '/' do
    scope module: :v1,
    constraints: ApiConstraints.new(version: 1, defalut: true) do
    end
  end
end
