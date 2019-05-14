class PrincipalController < ApplicationController

  def index
    @on_main = true
    @fechas = Fecha.order(fecha_i: :asc, fecha_f: :asc)
    @folleto = Documento.where('lower(titulo) like ?', '%folleto%').first.documento.url || '#'
  end

  def calendario
    @fechas = Fecha.order(fecha_i: :asc, fecha_f: :asc)
  end

  def admision
    @doc_url = Documento.where('lower(titulo) like ?', '%formato%aplicación%').first.documento.url || '#'
  end

  def contacto
    @responsable = Responsable.all
  end

  def programa

  end

  def testimonial
  end

  def sobre
  end

end
