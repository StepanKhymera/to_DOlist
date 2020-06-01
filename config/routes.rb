Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'signup', to: 'users#new'
  get 'progr', to: 'tasks#progr'
  get 'free', to: 'tasks#free'
  get 'misc', to: 'tasks#misc'

  root 'pages#index'
  get 'tasks/newTask'
  get 'new_task', to: 'tasks#newTask'

  get 'login', to: 'sessions#new'
  resources :users, except: [:new]
  post 'login', to: 'sessions#create'
delete 'logout', to: 'sessions#destroy'
  resources  :tasks
end
