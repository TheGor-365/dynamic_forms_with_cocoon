Rails.application.routes.draw do
  root "recipes#new"
  get 'recipes/create'
end
