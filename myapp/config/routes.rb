Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root to: redirect('/users')
    resources :users

    match 'auth/facebook/callback', to: 'sessions#create', via: [:get, :post]
    #match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
    match 'auth/failure', to: redirect('/'), via: [:get, :post]
    match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]
end
