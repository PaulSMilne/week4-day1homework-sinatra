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
    post_code=codeclan_address[:postcode]
    post_code2 = WordFormatter.new(post_code)
    better_post_code=post_code2.uppercase
    codeclan_address[:postcode] = better_post_code
    return codeclan_address.to_json
end
get "/camelize/:string" do
    word_bunch = WordFormatter.new(params[:string])
    @camelized = word_bunch.camelize
    erb(:result)
end

