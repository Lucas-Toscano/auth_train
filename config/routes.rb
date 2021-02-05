Rails.application.routes.draw do
  # get "about-us", to: "about#index", as: :about
  
  # SHEET PAGE
  get "sheet" => "sheet#index"
  post "sheet" => "sheet#index"

  # RACES PAGE
  get "races" => "races#all"

  # PATHS PAGE
  get "paths" => "paths#all"

  # MAP PAGE
  get "maps" => "maps#all"

  # PLACES PAGE
  get "places" => "places#all"

  # AUTHENTICATION PROCESS
  get "password" => "password#edit", as: :edit_password
  patch "password" => "password#update"

  get "sign_up" => "registration#new"
  post "sign_up" => "registration#create"

  get "sign_in" => "sessions#new"
  post "sign_in" => "sessions#create"
  
  delete "logout" => "sessions#destroy"

  get "password/reset" => "passwords_resets#new"
  post "password/reset" => "passwords_resets#create"

  get "password/reset/edit" => "passwords_resets#edit"
  patch "password/reset/edit" => "passwords_resets#update"
  

# MAIN PAGE
  root to: "main#index"
  
end
