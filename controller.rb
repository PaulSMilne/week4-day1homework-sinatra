require 'sinatra'
require 'sinatra/contrib/all'
require 'json'
require 'pry-byebug'
require_relative './models/wordformatter'

get "/" do
    erb(:home)
end

get "/address" do
    codeclan_address = {
        :address => '3 ARGYLE HOUSE',
        :building => 'CODEBASE',
        :postcode => 'eh2 2el',
        :phone => '0131 290 2600'
    }
    return codeclan_address.to_json
end