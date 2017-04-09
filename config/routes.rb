Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get 'about', to: "pages#about"
  get 'contact', to: "pages#contact"
  get 'apply', to: "pages#apply"
  get 'account', to: "pages#account"
  #resources :projects
  get 'projects', to: "projects#index"
  get 'tags/:tag', to:'projects#index', as: :tag 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
