class PrincipalController < ApplicationController

  def index
  end

  def calendario
    respond_to do |format|
      format.html {render (params[:locale] == "en" ? "calendar" : "calendario")}
    end
  end

end
