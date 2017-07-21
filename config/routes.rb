Rails.application.routes.draw do
  root 'concert_infos#main_view'
  
  get '/concert_infos/new' => 'concert_infos#new'
  post '/concert_infos/create' => 'concert_infos#create'
  
  ## Read
  get 'concert_infos/main_view' => 'concert_infos#main_view'
  get 'concert_infos/show/:post_id' => 'concert_infos#show'
  #get 'concert_infos/show' => 'concert_infos#show'
  
  #Delete
  post '/concert_infos/destroy/:post_id' => 'concert_infos#destroy'
  
  #update
  get '/concert_infos/edit/:post_id' => 'concert_infos#edit'
  post '/concert_infos/update/:post_id' => 'concert_infos#update'


  #comment
  post '/concert_infos/show/:post_id/comments/create' =>'comments#create'
  post '/concert_infos/show/:post_id/destroy/:comment_id' => 'comments#destroy'


  #lineup
  #post '/concert_infos/show/:post_id/comments/create' =>'lineups#create'
  
  #lineup destroy
  #post '/' =>'lineups#destroy'
  
  #sorting
  post '/concert_infos/main_view' =>'concert_infos#main_view'
  
  
  
end