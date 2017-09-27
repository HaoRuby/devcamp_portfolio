Rails.application.routes.draw do
  resources :portfolios
  get 'angular-items', to: 'portfolios#angular'
  # if you want to custom resources routes
  # resources :portfolios, except: [:show]
  # get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  get 'about-us', to: 'pages#about'
  get 'contact-us', to: 'pages#contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  root to: 'pages#home'
end
