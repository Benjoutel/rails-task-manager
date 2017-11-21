Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/tasks', to: 'tasks#index' #get all your tasks
  get '/tasks/new', to: 'tasks#new', as: :new_task #get the form to create a new task
  post '/tasks', to: 'tasks#create' #post a new task
  get '/tasks/:id', to: 'tasks#show', as: :task #get a precise task, e.g GET '/tasks/3' fetches the task with id=3
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task #get the form to edit an existing task
  patch '/tasks/:id', to: 'tasks#update' #update an existing task
  delete '/tasks/:id', to: 'tasks#destroy' #delete an existing task
end
