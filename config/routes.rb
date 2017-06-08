Rails.application.routes.draw do
  resources :events,except: [ :new,:create ], on: :member do
  resources :event_places,only: [:new],on: :member,as: 'place'
  end
  resources :organisers do
  resources :organiser_follows, on: :member, only: [:new],as: 'follow'
    get 'search',to: 'organisers#search', on: :collection 
  	resources :events, only: [ :new,:create ], on: :member 
  end
  get 'welcome/index'

  devise_for :users
  devise_for :views
  root to: "welcome#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
