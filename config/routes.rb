Rails.application.routes.draw do

  get 'posts/index'
  root 'tops#index'
  devise_for :clubs
  devise_for :users
  resources :users
  resources :clubs do
    resources :posts
  end
  resources :events
  get 'tags/:tag', to: 'clubs#index', as: :tag
   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
