Rails.application.routes.draw do
  resources :audits
  resources :db_engies
  resources :sw_developments
  resources :provaiders
  resources :operating_systems
  ActiveAdmin.routes(self)
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_scope :user do
    root to: "devise/sessions#new"
  end
  get 'welcome/index'

end
