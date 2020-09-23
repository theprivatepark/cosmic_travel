Rails.application.routes.draw do
  resources :scientists
  resources :missions
  resources :planets

  get "/about", to: "static#about", as: "about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
