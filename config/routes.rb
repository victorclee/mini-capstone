Rails.application.routes.draw do
  get '/designerchairs' => 'products#list_chairs'
end
