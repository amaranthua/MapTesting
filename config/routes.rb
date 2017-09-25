Rails.application.routes.draw do
  get 'my_map/index'

  resources :addresses

  root 'my_map#index'  
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
