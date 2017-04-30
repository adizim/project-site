Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  root to: "pages#home"
  get 'about', to: "pages#about"
  get 'contact', to: "contacts#new"
  get 'apply', to: "pages#apply"
  get 'account', to: "pages#account"
  resources :projects do
    resources :student_applications do
    end
  end
  resources "contacts", only: [:new, :create]

  get 'tags/:tag', to:'projects#index', as: :tag 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
