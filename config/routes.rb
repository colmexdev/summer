Rails.application.routes.draw do

  get "/" => "principal#index", :as => :index
  root to: "principal/index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
