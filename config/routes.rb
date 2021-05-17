Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :days, only: [:index, :show] 
  resources :pieces, only: [:index, :create]
  
  # post '/piece/new', to: 'piece#create'

end
