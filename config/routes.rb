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
  
#soccer
  get '/soccer/ch1' => 'soccer_ch1#s_1_main'
  get '/soccer/new' => 'soccer_ch1#new'
  post '/soccer/create' => 'soccer_ch1#create'
  get "/soccer/:id" => 'soccer_ch1#show'
  # delete "/soccer/:id" => 'soccer_ch1#delete' TODO: 이거해야해
end
