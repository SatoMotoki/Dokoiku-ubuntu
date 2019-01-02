Rails.application.routes.draw do

  devise_for :users, controllers: { :omniauth_callbacks => "omniauth_callbacks" }

  root 'pages#top'

  resources :events
  get 'events/manage'
  
  # get 'events/edit'
  # get 'events/new'
  # get 'events/index'
  # get 'events/show'


end
