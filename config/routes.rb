Rails.application.routes.draw do
  
  
  devise_for :users
  root to: 'notes#main'
  
  get '/notes/rank' => 'notes#rank'
  get '/notes/sports' => 'notes#sports'
  get '/notes/channelinfo' => 'notes#channelinfo'
  get '/notes/forlater' => 'notes#forlater'

  resources :notes
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
