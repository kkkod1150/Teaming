Rails.application.routes.draw do
# NOTE
  devise_for :users
  root to: 'notes#main'
  
  get '/notes/rank' => 'notes#rank'
  get '/notes/sports' => 'notes#sports'
  get '/notes/channelinfo' => 'notes#channelinfo'
  get '/notes/forlater' => 'notes#forlater'

  resources :notes
  
# Comment
  # Create
  post '/comments'=> 'comments#create'
  
  # Destroy
  delete '/comments/:id' => 'comments#destroy'
end
