Rails.application.routes.draw do
  root to: "dashboard#lists"

  resources :month_duties
  resources :fullfillments
  resources :beds do
    resources :fullfillments
  end
  resources :employees do
    resources :fullfillments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
