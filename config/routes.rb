Rails.application.routes.draw do
  # get "about-us", to: "about#index", as: :about
  get "about-us" => "about#index", as: :about

  get "sign_up" => "registration#new"
  post "sign_up" => "registration#create"

  get "sign_in" => "sessions#new"
  post "sign_in" => "sessions#create"
  
  delete "logout" => "sessions#destroy"
  
  root to: "main#index"
  
end
