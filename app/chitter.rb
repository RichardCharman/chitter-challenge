require 'sinatra/base'
require 'sinatra/session'
require 'sinatra/flash'
require_relative "../data_mapper_setup"

class Chitter < Sinatra::Base
  configure :development do
    set :bind, '0.0.0.0'
    set :port, 3000
  end

  get '/' do
    erb :start
  end  
  
  get '/peeps' do
    @peeps = Peep.all
    erb :'peeps/index'
  end
  
  run! if app_file == $0
end