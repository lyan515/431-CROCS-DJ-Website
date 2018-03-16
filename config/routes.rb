Rails.application.routes.draw do
  #gets for sessions
  get 'sessions/create'
  get 'sessions/destroy'

  #gets for home? will ask what home is doing
  get 'home/show'

  #resources 
  resources :gig_requests
  #welcome gets
  get 'welcome/index'
  get 'welcome/calendar'
  
  #get gig_request info
  get 'gig_requests/index'
  
  # google auth gets
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'
  
  #resources for google auth
  resources :sessions, only: [:create, :destroy]
  resource :home, only: [:show]
  
  #root path
  root 'welcome#index'

end
