Rails.application.routes.draw do
  devise_for :users
  resources  :favorite, only: [:destroy]
  # scope :hoge do
  #   match '',            to:'hoge#hoge',      via:'get',  as:'hoge'
  #   match '/hogehoge',   to:'hoge#hogehoge',  via:'get',  as:'hoge_hoge'
  # end

  root 'home#index'


  match '/home',   to:'home#show',   via:'get',  as:'home'
  match '/about',  to:'home#about',  via:'get',  as:'about'

  scope :messages do
    match '',          to:'messages#index',   via:'get',  as:'messages'
    match '/show',     to:'messages#show',    via:'get',  as:'messages_show'
    match '/new',      to:'messages#new',     via:'get',  as:'messages_new'
    match '/create',   to:'messages#create',  via:'post', as:'messages_create'
    match '/:id/add',  to:'favorite#create',  via:'post', as:'add_favorite'
    match '/show_fav', to:'favorite#show',    via:'get', as:'show_favorite'
  end

  # get '*', controller: 'application', action: 'render_404'
end
