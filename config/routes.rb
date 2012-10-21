Applepie::Application.routes.draw do
  resources :comments

  resources :answers

  resources :questions

  # authenticated :user do
  #   root :to => 'home#index'
  # end

  root :to => "static_pages#landing_page"
  devise_for :users
  resources :users

  match '/about_us' => 'static_pages#about_us', :as => :about_us

end