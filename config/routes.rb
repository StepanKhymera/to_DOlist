Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'signup', to: 'users#new'
  # get 'study', to: 'users#new'
  post  'tasks/progr'
  post  'tasks/free'
  post  'tasks/misc'

  # post 'prorg' => 'tasks#prorg', as: :prorg
  root 'pages#index'
  get 'tasks/newTask'
  get 'new_task', to: 'tasks#newTask'

  get 'login', to: 'sessions#new'
  resources :users, except: [:new]
  post 'login', to: 'sessions#create'
delete 'logout', to: 'sessions#destroy'
# match 'tasks/:id/study' => 'tasks#study', as :tasks_study
  resources  :tasks
end
