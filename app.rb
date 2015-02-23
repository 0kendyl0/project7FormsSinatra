# app.rb
require 'sinatra'
require 'holidapi'

class MyWebApp < Sinatra::Base
	get '/' do
		puts params['day'].inspect
		if params['day'].nil? || params['day'] == ""
	  		@holidays = HolidApi.get(country: 'us', year: params['year'], month: params['month']).flatten
		else
  			@holidays = HolidApi.get(country: 'us', year: params['year'], month: params['month'], day: params['day'])
		end
		erb :index
	end
end
