Rails.application.routes.draw do
  resources :events
  resources :organisers do
	resources :organiser_like	
    get 'search',to: 'organisers#search', on: :collection
  end
  resources :event_pages, except: [ :new,:create ] do
  end
  get 'welcome/index'

  devise_for :users
  devise_for :views
  root to: "welcome#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
