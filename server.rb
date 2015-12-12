require 'sinatra'
require 'sinatra/activerecord'

class Score < ActiveRecord::Base
	validates_presence_of :score
	validates_presence_of :name
end

class Server < Sinatra::Base
	post '/add/:name/score/:score/' do
		Score.create(name: params['name'], score: params['score'].to_i)
	end
end
