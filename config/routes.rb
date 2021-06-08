Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :pieces, only: [:index]
  resources :days, only: [:index, :show] do
    resources :pieces, only: [:new, :create, :show]
  
  end
  
  # post '/piece/new', to: 'piece#create'

end
