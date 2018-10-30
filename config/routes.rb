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

    end
  end
  resources :partners, only: [:index, :show]
  resources :annotations, only: [:index, :show]
  resources :information_elements, only: [:index, :show]
  resources :pages, only: [:index,:show ]

  resources :events, only: [:index, :show ] do 
    resources :event_participation_notes,only: [:index,:create] do
      resources :event_participations, only: [:index,:create]
    end
  end


  resources :contest_nominations, only: [:index, :show ]  do 
    resources :contest_works,only: [:index,:create ]
  end


  match '/uploads/download/file/*/*filename', :to => 'downloads#download', via: :all
  match '*a', :to => 'application#not_found', via: :all
end
