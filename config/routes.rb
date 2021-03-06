Rails.application.routes.draw do
  root to: "cocktails#index"
  resources :cocktails do
    resources :doses, only: [ :new, :create ]
  end
  delete '/doses/:id', to: "doses#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


# Rails.application.routes.draw do
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#   root to: 'cocktails#index'
#   resources :cocktails do
#     resources :doses, only: [:new, :create]
#   end
#   resources :doses, only: [:destroy]
# end
