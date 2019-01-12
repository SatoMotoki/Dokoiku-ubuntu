Rails.application.routes.draw do

  root 'pages#top'

  devise_for :users, only: [:sign_in, :sign_out, :session, :registrations, :omniauth_callback, :confirmation], controllers: { :omniauth_callbacks => "omniauth_callbacks" }

  get '/users', to: redirect("/users/sign_up")

  get 'events/manage'

  resources :events do
    resources :comments, only: [:create]
  end

end
