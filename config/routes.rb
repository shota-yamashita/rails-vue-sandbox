Rails.application.routes.draw do
  root to: 'home#index'

  ActiveAdmin.routes(self)

  # APIコントローラへのルーティング
  namespace :api, {format: 'json'} do
    namespace :v1 do
      resources :employees, only: [:index, :show, :create, :update, :destroy]
    end
  end
end
