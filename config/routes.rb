Rails.application.routes.draw do
  get 'welcome'=>'welcome#index'
  controller :sessions do
    get  'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  get 'sessions/create'

  get 'sessions/destroy'

  resources :users
  resources :ksiazkas
  root 'welcome#index'
  
end
