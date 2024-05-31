Rails.application.routes.draw do
  get 'authors/index'
  get 'articles/index'
  root "articles#index"

  resources :articles do
    resources :comments
  
  end
  resources :authors
end

