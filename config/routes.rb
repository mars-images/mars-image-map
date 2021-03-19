Rails.application.routes.draw do
  root 'map#index'
  get 'articles', to: 'articles#index'
  get 'map', to: 'map#index'
end
