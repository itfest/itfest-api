Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'general/info', to: 'general#info'
  # put 'general/info', to: 'general#info'
  # patch 'general/info', to: 'general#info'
  
  authenticate :admin do
    scope "/admin" do
      resources :partners, only: [:new, :create, :edit, :update, :destroy]
      resources :annotations, only: [:new, :create, :edit, :update, :destroy]
      resources :information_elements, only: [:new, :create, :edit, :update, :destroy]
      resources :general_infos, only: [:create,:update]

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
 

  # resources :contest_nominations do 
  #   resources :contest_works
  # end

  # resources :competition_teams do 
  #   resources :competition_team_members
  # end

end
