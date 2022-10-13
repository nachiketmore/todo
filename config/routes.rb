Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "task#list"
  get 'task/list'
  get 'task/new'
  post 'task/create'
  patch 'task/update'
  get 'task/list'
  get 'task/show'
  get 'task/edit'
  get 'task/delete'
  get 'task/update'
end
