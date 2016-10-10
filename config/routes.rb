Rails.application.routes.draw do
  resources :months do
    resources :fullfillments
  end
  root to: "frontend#index", as: 'frontend'
  get "backend", to: "backend#index", as: 'backend'

  resources :month_duties
  resources :fullfillments
  resources :beds do
    resources :fullfillments
  end
  resources :employees do
    resources :months do
      resources :fullfillments
    end
  end 
end
