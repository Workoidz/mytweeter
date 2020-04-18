Rails.application.routes.draw do
  get 'myfeed/show'
  get 'user_follow/change_status'
  get 'dashboard/show'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  	resources :users

  	resources :tweets

 	resources :following_users

 	resources :follower_users

 	resources :sessions, only: [:new, :create, :destroy]
 	get "/login" => "sessions#new", as: "login"
 	delete "/logout" => "sessions#destroy", as: "logout"


 	get '/dashboard' => 'dashboard#show', as: 'dashboard'

 	get '/change_status' => 'user_follow#change_status', as: 'change_status'
 	get '/myfeed' => 'myfeed#show', as: 'myfeed'


end
