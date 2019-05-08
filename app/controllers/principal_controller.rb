class PrincipalController < ApplicationController

  def index
    @on_main = true
    @fechas = Fecha.order(fecha_i: :asc, fecha_f: :asc)
  end

  def calendario
    @fechas = Fecha.order(fecha_i: :asc, fecha_f: :asc)
  end

  def admision
    respond_to do |format|
      format.html {render (params[:locale] == "en" ? "admission" : "admision")}
    end
  end

  def contacto
    @responsable = Responsable.all
  end

  def programa
    respond_to do |format|
      format.html {render (params[:locale] == "en" ? "program" : "programa")}
    end
  end

  def testimonial
    respond_to do |format|
      format.html {render (params[:locale] == "en" ? "testimonials" : "testimonial")}
    end
  end

  def sobre
    respond_to do |format|
      format.html {render (params[:locale] == "en" ? "overview" : "sobre")}
    end
  end

end
