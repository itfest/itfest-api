Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  authenticate :admin do
    scope "/admin" do
      resources :partners
      resources :annotations
      resources :information_elements
      resources :general_infos

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
  resources :general_infos, only: [:show]

  resources :contest_nominations,only:[:create] do 
    resources :contest_works,only:[:create]
  end

  resources :competition_teams,only:[:create] do 
    resources :competition_team_members,only:[:create]
    resources :competition_team_coach,only:[:create]
  end

end
