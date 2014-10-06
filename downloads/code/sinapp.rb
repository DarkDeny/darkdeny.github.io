require 'rubygems'
require 'sinatra'
require 'haml'

class App < Sinatra::Application 
	post '/bazinga' do
		# This line will be in logs
		puts "lalala #{params.inspect}"
		# And this is going to be response sent to client
		"I got some: #{params.inspect}"
	end
end