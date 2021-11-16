Rails.application.routes.draw do
  root to: 'pages#home'
  get "/my_planets", to: "planets#my_planets"
  get "/my_reservations", to: "reservations#my_reservations"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :planets do
    resources :reservations, except: %i[show destroy]
  end
end

# get "planets", to: "planets#index"
# get "planets/:id", to: "planets#show"
# get "planets/new", to: "planets#new"
# get "/planets/:id/edit", to: "planets#edit"
# patch "/planets/:id", to: "planets#update"
# delete "/planets/:id", to: "planet#destroy"
