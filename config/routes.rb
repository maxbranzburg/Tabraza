Rails.application.routes.draw do

  root 'welcome#index'

  resources :concentration
  resources :course, only: [:index, :show]
  resources :providor, only: [:index, :show]
  resources :welcome, only: [:index]

end
