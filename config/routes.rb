Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'general#info', via: :all
  get 'general/info', to: 'general#info'

  authenticate :admin do
    scope "/admin" do
      resources :partners
      resources :annotations
      resources :information_elements
      resources :general_infos
      resources :pages

      resources :contest_nominations do 
        resources :contest_works
      end

      resources :competition_teams do
        resources :competition_team_members
      end
    end
  end
  resources :partners, only: [:index, :show]
  resources :annotations, only: [:index, :show]
  resources :information_elements, only: [:index, :show]
  resources :pages, only: [:index,:show]


  resources :contest_nominations, only:[:index] do 
    resources :contest_works,only:[:create]
  end

  resources :competition_teams,only:[:index,:create] do 
    resources :competition_team_members,only:[:create]
    resources :competition_team_coach,only:[:create]
  end

  match '/uploads/download/file/*/*filename', :to => 'downloads#download', via: :all
  match '*a', :to => 'application#not_found', via: :all
end
