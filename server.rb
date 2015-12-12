class Server < Sinatra::Base
	register Sinatra::ActiveRecordExtension
	set :data, {adapter: 'sqlite3', database: 'scores.sqlite3' }

	post '/add/:name/score/:score/' do
		# add to database
	end
end
