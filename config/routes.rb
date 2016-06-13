Admin::Engine.routes.draw do
  resources :users, only: [:index, :destroy]
end
