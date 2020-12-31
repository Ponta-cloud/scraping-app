Rails.application.routes.draw do
  root "user#hello"
  resources :users
end
