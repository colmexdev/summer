class PrincipalController < ApplicationController

  def index
    @on_main = true
    respond_to do |format|
      format.html {render (params[:locale] == "en" ? "home" : "index")}
    end
  end

  def calendario
    respond_to do |format|
      format.html {render (params[:locale] == "en" ? "calendar" : "calendario")}
    end
  end

  def admision
    respond_to do |format|
      format.html {render (params[:locale] == "en" ? "admission" : "admision")}
    end
  end

  def contacto
    respond_to do |format|
      format.html {render (params[:locale] == "en" ? "contact" : "contacto")}
    end
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
