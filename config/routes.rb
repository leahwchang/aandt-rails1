Rails.application.routes.draw do


  devise_for :users
  resources :users
  resources :pages
  # devise_for :users
  # mount Ckeditor::Engine => '/ckeditor'
  
  # resources :categories, only: [:show, :index]
  # resources :pages, only: [:show, :index]
  
  # # admin only
  # namespace :admin do
  # 	resources :categories
  # 	resources :pages
  #   resources :menus, except: [:show]
  #   resources :types, except: [:show]
  # end

  # Page.where.not("slug", nil).all.each do |page|
  # 	get "/#{page.slug}", controller: "pages", action: "show", id: page.id
  # end

  # root 'admin/pages#index'
  root to: "pages#index"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
