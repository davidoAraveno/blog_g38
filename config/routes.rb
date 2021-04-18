Rails.application.routes.draw do
  get '/posts/dashboard', to: 'articles#dashboard', as: 'dash'
  post '/posts/dashboard_post', to: 'articles#dashboard', as: 'dash_post'
  post '/posts/create', to: 'articles#create', as: 'ac'
  
  root 'articles#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
