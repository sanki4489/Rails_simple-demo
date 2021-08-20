Rails.application.routes.draw do
  
  root 'demo#index'
  get 'demo/hello'
  get 'demo/contact'
  get 'demo/about'
  
 get 'menu' => 'access#menu'
 get 'login' => 'access#new' 
 delete 'logout' => 'access#destroy'
 resource :access, controller: 'access', except: [:show, :edit, :update] do
  member do
    get :menu
  end
end 

 
  resources :subjects do 
    member do
      get :delete
    end
  end    

  resources :pages do 
    member do
      get :delete
    end
  end    

  #get 'access/menu'
  #get 'access/new'
  #get 'access/create'
  #get 'access/destroy'
  
  
  #get 'pages/new'
  #get 'pages/index'
  #get 'pages/show'
  #get 'pages/edit'
  #get 'pages/delete'
  #get 'subjects/new'
  #get 'subjects/index'
  #get 'subjects/show'
  #get 'subjects/edit'
  #get 'subjects/delete'
end
