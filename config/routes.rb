Applepie::Application.routes.draw do

  devise_for :users
  resources :users

  resources :questions
  resources :answers
  resources :comments

  authenticated :user do
     root :to => 'user#show'
  end

  root :to => 'static_pages#landing_page'

  match '/about_us' => 'static_pages#about_us', :as => :about_us

end