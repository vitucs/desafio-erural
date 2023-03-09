Rails.application.routes.draw do
  root 'pages#index'
  get 'pages/salas'
  get 'pages/video/:id', to: 'videos#index'
  post 'upload', to: 'salas#upload'
  post 'comentarios/new', to: 'comentarios#create'
  resources :pages
  resources :comentarios
  resources :videos
  resources :usuarios
  resources :salas
  match '*path', to: 'errors#not_found', via: :all
end
