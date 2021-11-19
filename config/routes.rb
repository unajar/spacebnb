Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: 'pages#home'
  get "/my_planets", to: "planets#my_planets"
  get "/my_planets/:id", to: 'planets#my_planet', as: 'my_planet'

  get "/my_reservations", to: "reservations#my_reservations"
  get "/my_planets_reservations", to: 'reservations#my_planets_reservations', as: 'my_planets_reservations'
  patch '/my_planets_reservation/:id/confirm', to: 'reservations#confirm_reservation', as: 'confirm_reservation'
  patch '/my_planets_reservations/:id/decline', to: 'reservations#decline_reservation', as: 'decline_reservation'

  resources :planets do
    resources :reservations, except: %i[show destroy update edit index]
  end
end
