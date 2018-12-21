Rails.application.routes.draw do

  get 'events/manage'
  get 'events/new'
  get 'events/index'
  get 'events/show'
  get 'sessions/new'
  get 'users/new'
  root 'pages#top'

end
