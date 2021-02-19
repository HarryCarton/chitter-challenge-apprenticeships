require 'sinatra/base'
require_relative './lib/user'

class Chitter < Sinatra::Base
  get '/' do
    erb(:sign_in)
  end

  post '/links_page' do
    @user = User.new(params[:name], params[:password])
    erb(:links)
  end

  get '/peeps' do
    'This is a peep!'
  end

  run! if app_file == $0
end
