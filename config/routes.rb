Rails.application.routes.draw do
  resources :check_points

  resources :daily_weathers
  resources :komunes
  resources :raidition_infos
  resources :cloud_infos
  resources :polution_infos
  resources :rain_infos
  resources :cities
  resources :countries
  get 'home/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  get 'daily_weathers/:checkpoint_id', to: 'daily_weathers#download_csv', as: :download_csv
end
