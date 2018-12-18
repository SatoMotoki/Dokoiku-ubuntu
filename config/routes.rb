Rails.application.routes.draw do

  get 'events/show'
  get 'sessions/new'
  get 'users/new'
  root 'pages#top'

end
