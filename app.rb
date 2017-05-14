require 'sinatra'
require 'sinatra/reloader'

get '/' do
 data =  {
   titulo: 'Projectos Anuncios'
 }
 erb :index, locals: data
end

get '/hola' do
   'bienvenido'
end

get '/hola/:usuario' do |usuario|
      'bienvenido usuario' + usuario

end
