Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/my_planets", to: "planets#my_planets"
  get "/my_planets/:id", to: 'planets#my_planet', as: 'my_planet'
  get "/my_reservations", to: "reservations#my_reservations"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :planets do
    resources :reservations, except: %i[show destroy]
  end
end
