Rails.application.routes.draw do
  get 'posts/index'
  root to: 'posts#index'
  resources :posts, only: [:index, :new, :create, :destroy, :edit, :update]
end
