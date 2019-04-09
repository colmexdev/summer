Rails.application.routes.draw do

  scope "(:locale)", locale: /(en)|(es)/ do
    get (locale == "en" ? "calendar" : "calendario") => "principal#calendario", :as => :calendario
  end

  get "/(:locale)" => "principal#index", :as => :main
  root to: "principal#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
