Rails.application.routes.draw do
  get '/' => 'meetings#index'

  get '/meetings' => 'meetings#index'
  get '/meetings/new' => 'meetings#new'
  get '/meetings/:id' => 'meetings#show'
  post '/meetings' => 'meetings#create'
end
