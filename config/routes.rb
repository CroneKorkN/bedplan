Rails.application.routes.draw do
  resources :fumonth_duties
  resources :fullfillments
  resources :beds
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
