Rails.application.routes.draw do

  root 'welcome#index'

  resources :concentration, only: [:index, :show]
  resources :course, only: [:index, :show]
  resources :providor, only: [:index, :show]
  resources :welcome, only: [:index]

end
