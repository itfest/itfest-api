Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'general/info', to: 'general#info'
  put 'general/info', to: 'general#info'
  patch 'general/info', to: 'general#info'
  
  resources :partners
  resources :annotations

  resources :contest_nominations do 
    resources :contest_works
  end

  resources :competition_teams do 
    resources :competition_team_members
  end

end
