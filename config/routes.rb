Rails.application.routes.draw do
  get 'gyms/new'
  root 'static_pages#home'

  get  'static_pages/home'
  get  'static_pages/help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'gyms#new'
  post '/signup',  to: 'gyms#create'
  resources :gyms
end
