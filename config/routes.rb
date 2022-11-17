Rails.application.routes.draw do
  root "recipes#new"
  
  resources :projects
  get 'recipes/create'
end
