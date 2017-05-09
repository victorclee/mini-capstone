Rails.application.routes.draw do
  get '/' => 'products#index'
  get '/designerchairs' => 'products#index'

  get '/designerchairs/new' => 'products#new'
  post '/designerchairs' => 'products#create'

  get '/designerchairs/:id' => 'products#show'

  get '/designerchairs/:id/edit' => 'products#edit'
  patch '/designerchairs/:id' => 'products#update'

  delete '/designerchairs/:id' => 'products#destroy'
end
