Rails.application.routes.draw do

  scope "(:locale)", locale: /(es)|(en)/ do
    get "calendario" => "principal#calendario", :as => :calendario
    get "admision" => "principal#admision", :as => :admision
    get "contacto" => "principal#contacto", :as => :contacto
    get "programa" => "principal#programa", :as => :programa
    get "testimonial" => "principal#testimonial", :as => :testimonial
    get "sobre" => "principal#sobre", :as => :sobre
  end

  get "/(:locale)", to: "principal#index", as: :main, locale: /(en)|(es)/
  root to: "principal#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
