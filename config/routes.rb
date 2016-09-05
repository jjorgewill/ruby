Rails.application.routes.draw do

  resources :articles do
    resources :comments, only:[:create, :show, :upadte, :destroy]
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'articles#index'
end
