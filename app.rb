require 'sinatra/base'

class DBServer < Sinatra::Base

  set port: 4000

  get '/' do
    '<h3>to store data in the database, goto http://localhost:4000/set?somekey=somevalue</h3>' +
      '<h3>to retrieve data from the database go to http://localhost:4000/get?key=somekey</h3>'
  end

  get '/get' do
    puts params
  end

  get '/set' do
    puts params
  end

  run! if app_file == $0
end
