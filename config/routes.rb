Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'general/info', to:'general#info'
  get 'general/info', to: 'general#info'

  resources :contest_nomination do 
  	resources:contest_work
  end
  resources :partners
  resources :annotations
end
