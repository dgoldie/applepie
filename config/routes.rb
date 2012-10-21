Applepie::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "static_pages#landing_page"
  devise_for :users
  resources :users, :voices

  match '/voice' => "voice#index"
  match '/voice/make_call' => "voice#make_call"
  match '/voice/init_call' => "voice#init_call"
  
end