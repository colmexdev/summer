Rails.application.routes.draw do

  scope "(:locale)", locale: /(es)/ do
    get "calendario" => "principal#calendario", :as => :calendario
  end

  scope ":locale", locale: /(en)/ do
    get "calendar" => "principal#calendario", :as => :calendar
  end

  get "/(:locale)" => "principal#index", :as => :main
  root to: "principal#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
