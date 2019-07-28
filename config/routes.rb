Rails.application.routes.draw do

  root 'superheros#index'
  resources :superheros

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
