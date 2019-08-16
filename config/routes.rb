Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "cocktail#index"
  resources :cocktails, only: [ :show, :new, :create ] do
    resources :doses, only: [ :new, :create, :destroy]
  end
  # resources :ingredients, only: [ :index, :show, :new, :create ]
  # resources :doses, only: [ :destroy ]

end
