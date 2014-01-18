Helpdesk::Application.routes.draw do
  root :to => "home#index"
  get 'tags/:tag', to: 'users#index', as: :tag
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end
