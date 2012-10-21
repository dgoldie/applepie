Applepie::Application.routes.draw do

  devise_for :users
  resources :users

  resources :questions do
    member {post :vote}
  end


  resources :answers
  resources :comments

  authenticated :user do
    root :to => 'questions#index'
  end

  root :to => 'static_pages#landing_page'

  get 'tags/:tag', to: 'questions#index', as: :tag

  match '/about_us' => 'static_pages#about_us', :as => :about_us

end