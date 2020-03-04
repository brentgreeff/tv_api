Rails.application.routes.draw do
  # https://guides.rubyonrails.org/routing.html

  resources :movies, only: [:index]
end
