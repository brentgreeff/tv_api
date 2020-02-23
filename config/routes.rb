Rails.application.routes.draw do
  resources :users
  # https://guides.rubyonrails.org/routing.html

  get 'welcome', to: 'welcome#index'
end
