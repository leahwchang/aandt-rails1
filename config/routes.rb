Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  resources :categories, only: [:show, :index]
  resources :pages, only: [:show, :index]
  
  namespace :admin do
  	resources :categories
  	resources :pages
    resources :menus, except: [:show]
  end

  Page.where.not("slug", nil).all.each do |page|
  	get "/#{page.slug}", controller: "pages", action: "show", id: page.id
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
