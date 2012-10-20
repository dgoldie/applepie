Applepie::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "static_pages#landing_page"
  devise_for :users
  resources :users
  match '/voice' => "static_pages#voice", :as => :voice
end