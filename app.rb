# app.rb
require 'sinatra'
require 'cat_api'

class MyWebApp < Sinatra::Base
	get '/' do
  		erb :"index#{ rand(3) + 1 }"
	end
end

class CatIndustriesApp < Sinatra::Base
  get '/cats' do
    @pictures = CatAPI.new.get_images(results_per_page: 100, category: 'hats')
    erb :cats
  end
end