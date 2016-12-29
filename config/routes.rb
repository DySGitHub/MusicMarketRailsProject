  Rails.application.routes.draw do

      root 'static_pages#home'
         
       get  '/home',    to: 'static_pages#home'
       get  '/pianos',    to: 'static_pages#pianos'
       get  '/guitars',    to: 'static_pages#guitars'
       get  '/accessories',    to: 'static_pages#accessories'
      get  '/help',    to: 'static_pages#help'
      get  '/about',   to: 'static_pages#about'
      get  '/contact', to: 'static_pages#contact'
      get  '/signup',  to: 'users#new'
      get    '/login',   to: 'sessions#new'
      post   '/login',   to: 'sessions#create'
      delete '/logout',  to: 'sessions#destroy'
      ############################################
     
      ############################################
       get  '/buyaccessories',  to: 'accessories#show'
       get  '/buyaccessories2',  to: 'accessories#show2'
        get  '/buyaccessories3',  to: 'accessories#show3'
       get  '/buyaccessories4',  to: 'accessories#show4'
        get  '/buyaccessories5',  to: 'accessories#show5'
       get  '/buyaccessories6',  to: 'accessories#show6'

      resources :users
      resources :guitars
      resources :pianos
      resources :accessories

       resources :feedbacks, only: [:create, :destroy]
    end