Rails.application.routes.draw do
  get 'series/index'
  get 'series/show'

  devise_for :users
  resources :marks
  resources :seen_episode_series
  resources :current_watch_series
  resources :episodes
  resources :series, only: [:show]
  resources :users
  # get 'welcome/index'
  root :to => "series#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
