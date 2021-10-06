Rails.application.routes.draw do
  resources :todos
  get '/user', to: 'user#index' #retorna todos usuários(função index)
  get '/user/:id', to: 'user#show' #retorna um usuário(função show)
  post '/user', to: 'user#create' #cria usuário(função create)
  patch '/user/:id', to: 'user#update' #atualiza usuário(função update)
  get '/user/:user_id/todos/', to: 'todos#index' 
  post '/user/:user_id/todos/', to: 'todos#create' 
  get '/user/:user_id/todos/:tid', to: 'todos#show' 
  patch '/user/:user_id/todos/:tid', to: 'todos#update' 
  delete '/user/:user_id/todos/:tid', to: 'todos#destroy' 
end
