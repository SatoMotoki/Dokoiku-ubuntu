Rails.application.routes.draw do

  devise_for :users
  get 'events/edit'
  get 'events/manage'
  get 'events/new'
  get 'events/index'
  get 'events/show'
  get 'sessions/new'
  get 'users/new'
  root 'pages#top'

end
