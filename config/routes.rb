Rails.application.routes.draw do
  #get 'site/index'
  devise_for :users
  resources :bookmarks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #root 'bookmarks#index'
  root 'site#index'
  devise_scope :user do  
   get '/users/sign_out' => 'devise/sessions#destroy'     
end

end
