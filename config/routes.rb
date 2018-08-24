Rails.application.routes.draw do
# NOTE
  devise_for :users
  # path: 'user', #컨트롤러 이름
  # path_names: {sign_in: 'login', sign_out: 'logout'} #액션 이름

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
  
# Soccer
  get '/soccer/ch1' => 'soccer_ch1#s_1_main'
  get '/soccer/new' => 'soccer_ch1#new'
  post '/soccer/create' => 'soccer_ch1#create'
  
# Profile
  get '/my_profile',     to: 'profiles#show'
  get '/new_profile', to: 'profiles#new'
  get '/create_profile', to: 'profiles#new'
  post '/create_profile', to: 'profiles#create'
  get '/edit_profile',   to: 'profiles#edit'
  get '/update_profile', to: 'profiles#edit'
  patch '/update_profile', to: 'profiles#update'

end
