require 'sinatra'
require 'sinatra/activerecord'

class Score < ActiveRecord::Base
end

class Server < Sinatra::Base
	post '/add/:name/score/:score/' do
		# add to database
	end
end
