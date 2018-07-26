Rails.application.routes.draw do


  resources :cocktails do
    resources :doses, except: [:destroy]
  end

  resources :doses, only: [:destroy]

  root to: 'cocktails#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
