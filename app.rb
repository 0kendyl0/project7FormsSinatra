# app.rb
require 'sinatra'
require 'holidapi'

class MyWebApp < Sinatra::Base
	get '/' do
		@holidays = HolidApi.get(country: 'us', year: Time.now.year, month: Time.now.month)
		@birthdayHolidays = HolidApi.get(country: 'us', year: 1993, month: 12)
  		erb :index
	end
end
