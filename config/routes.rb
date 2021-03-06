Rails.application.routes.draw do

  devise_for :users
  get '/about' => 'pages#about'
  get '/posts' => 'pages#posts'
  get '/projects' => 'projects#index'
    resources :posts
    resources :projects
    
  get '/contacts' =>  'contacts#new'
    resources :contacts, only: [:new, :create]

  root "pages#welcome"

end
