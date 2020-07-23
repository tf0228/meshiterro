Rails.application.routes.draw do
  root 'post_images#index'
  resources :post_images, only: [:new, :create, :index, :show] do
    resource :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end
  devise_for :users
end
