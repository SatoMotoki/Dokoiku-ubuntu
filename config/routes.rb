Rails.application.routes.draw do

  devise_for :users, controllers: { :omniauth_callbacks => "omniauth_callbacks" }

  root 'pages#top'
  get 'events/manage'

  resources :events do
    resources :comments, only: [:create]
  end


  # get 'events/edit'
  # get 'events/new'
  # get 'events/index'
  # get 'events/show'


end
