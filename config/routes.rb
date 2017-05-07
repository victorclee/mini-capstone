Rails.application.routes.draw do
  get '/' => 'products#index'
  get '/designerchairs' => 'products#index'

  get '/designerchairs/new' => 'products#new'
  post '/designerchairs' => 'products#create'

  get '/designerchairs/:id' => 'products#show'
end
