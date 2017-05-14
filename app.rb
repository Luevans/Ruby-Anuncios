require 'sinatra'
require 'sinatra/reloader'

require_relative 'models/anuncio'

get '/' do
  data =  {
    titulo: 'Projectos Anuncios'
  }
  
  erb :index, locals: data
end

get '/hola' do
  anuncio = Anuncio.new( 100, 'Compro auto Toyota', 'Compro nuevo auto Toyota 2016', 'Nick Palomino', nil )

  data = {
     titulo: 'Proyecto Anuncios',
     anuncio: anuncio
  }

  erb :create, locals: data
end

get '/hola/:usuario' do |usuario|
  'bienvenido usuario' + usuario
end
