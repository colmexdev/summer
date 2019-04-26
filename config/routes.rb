Rails.application.routes.draw do
  devise_for :admins, :controllers => { :registrations => "registrations", :sessions => "sessions"}
  resources :admins

  devise_scope :admin do
    get "/acceder" => "devise/sessions#new"
  end

  #match "/404", :to => "errors#not_found", :via => :all
  #match "/500", :to => "errors#internal_server_error", :via => :all
  #get "/500_e", :to => "errors#internal_server_error"

  get 'panel/panel' => 'panel#panel', :as => :panel
  get 'panel/principal' => 'panel#principal', :as => :panel_princ
  get 'panel/index' => 'panel#index', :as => :panel_index
  post 'panel/index' => 'panel#index', :as => :panel_index_post
  get 'panel/generar' => 'panel#generar', :as => :panel_nuevo
  get 'panel/editar' => 'panel#editar', :as => :panel_editar
  post 'panel' => 'panel#crear'
  get 'panel/:id' => 'panel#mostrar', :as => :panel_mostrar
  delete 'panel/:id' => 'panel#eliminar', :as => :panel_eliminar
  put 'panel/editar' => 'panel#actualizar'
  patch 'panel/editar' => 'panel#actualizar'

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
