require 'sinatra/reloader'

class Anuncio
  attr_accessor :titulo, :cuerpo, :autor, :fecha_publicacion

  def initialize( id, titulo, cuerpo, autor, fecha_publicacion )
    @id = id
    @titulo = titulo
    @cuerpo = cuerpo
    @autor  = autor
    @fecha_publicacion = fecha_publicacion || Time.now
  end

  def to_s
    "#{@titulo} : #{@cuerpo} - #{@fecha_publicacion}"
  end
end
