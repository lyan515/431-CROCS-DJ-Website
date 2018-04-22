Rails.application.routes.draw do
  resources :dj_portfolios
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
  get 'welcome/contact'
  #get gig_request pages
  get 'gig_requests/index'
  get 'gig_requests/:id/approve' => 'gig_requests#approve', as: :gig_requests_approve
  get 'gig_requests/:id/deny' => 'gig_requests#deny', as: :gig_requests_deny
  get 'gig_requests/:id/show_final' => 'gig_requests#show_client_final', as: :gig_requests_final
  get 'gig_requests/:id/show_final_approve' => 'gig_requests#show_client_final_approve', as: :gig_requests_final_approve
  
  #get approve and 
  
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
