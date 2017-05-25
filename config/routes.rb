Rails.application.routes.draw do
  get '/' => 'products#index'
  get '/designerchairs' => 'products#index'

  get '/designerchairs/new' => 'products#new'
  post '/designerchairs' => 'products#create'

  get '/designerchairs/:id' => 'products#show'

  get '/designerchairs/:id/edit' => 'products#edit'
  patch '/designerchairs/:id' => 'products#update'

  delete '/designerchairs/:id' => 'products#destroy'

  get '/random' => 'products#random'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'


  post '/orders' => 'orders#create'
  get '/orders/:id' => 'orders#show'

  # carted product routes
  get '/carted_products' => 'carted_products#index'
  post '/carted_products' => 'carted_products#create'
  delete '/carted_products/:id' => 'carted_products#destroy'

end
