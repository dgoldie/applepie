
Applepie::Application.routes.draw do

  devise_for :users
  resources :users

  resources :questions do
    member {post :vote}
    #resources :answers
    resources :answers do
      member {post :vote}
      resources :comments
    end
  end

  # resources :answers do
  #   member {post :vote}
  # end

  #resources :comments

  authenticated :user do
    root :to => 'questions#index'
  end

  root :to => 'static_pages#landing_page'

  get 'tags/:tag', to: 'questions#index', as: :tag

  match '/about_us' => 'static_pages#about_us', :as => :about_us
  match '/demo' => 'static_pages#landing_page', :as => :demo
  match '/answers/accept_answer' => "answers#accept_answer"
  match '/voice' => "voice#index"
  match '/voice/make_call' => "voice#make_call"
  match '/voice/init_call' => "voice#init_call"
  match '/voice/recording' => "voice#recording"
  match '/voice/transcribing' => "voice#transcribing"
end