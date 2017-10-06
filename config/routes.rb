Rails.application.routes.draw do

  root 'home#index'

  # match '/send_words',        to:'send_words#index',  via:'get',  as:'send_words'
  # match '/send_words/new',    to:'send_words#new',    via: ,  as:'send_words_new'
  # match '/send_words/create', to:'send_words#create', via:'post', as:'send_words_create'
  resources :send_words
  resources :users
  match '/receive_words',       to:'receive_words#index',  via:'get',  as:'receive_words'
  match '/receive_words/show',  to:'receive_words#show',   via:'get',  as:'receive_words_show'

end
