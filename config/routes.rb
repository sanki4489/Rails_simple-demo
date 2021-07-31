Rails.application.routes.draw do
  
  root 'demo#index'
  get 'demo/hello'
  get 'demo/contact'
  get 'demo/about'
  
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
