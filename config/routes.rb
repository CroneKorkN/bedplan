Rails.application.routes.draw do
  resources :months
  root to: "frontend#index", as: 'frontend'
  get "backend", to: "backend#index", as: 'backend'
  #get "month/:month", to: "backend#month", as: 'month'

  resources :month_duties
  resources :fullfillments
  resources :beds do
    resources :fullfillments
  end
  resources :employees do
    resources :fullfillments
  end
end
