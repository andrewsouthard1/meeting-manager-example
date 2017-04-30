Rails.application.routes.draw do
  get '/' => 'meetings#index'

  get '/meetings' => 'meetings#index'
  get '/meetings/new' => 'meetings#new'
  post '/meetings' => 'meetings#create'
  get '/meetings/:id' => 'meetings#show'
  get '/meetings/:id/edit' => 'meetings#edit'
  put '/meetings/:id' => 'meetings#update'
end
