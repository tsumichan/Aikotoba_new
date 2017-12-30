Rails.application.routes.draw do
  devise_for :users
  # scope :hoge do
  #   match '',            to:'hoge#hoge',      via:'get',  as:'hoge'
  #   match '/hogehoge',   to:'hoge#hogehoge',  via:'get',  as:'hoge_hoge'
  # end

  root 'home#index'

  scope :home do
    match '',   to:'home#show',    via:'get',  as:'home'
  end

  scope :messages do
    match '',        to:'messages#index',  via:'get',  as:'messages'
    match '/show',   to:'messages#show',   via:'get',  as:'messages_show'
    match '/new',    to:'messages#new',    via:'get',  as:'messages_new'
    match '/create', to:'messages#create', via:'post', as:'messages_create'
  end

  # get '*', controller: 'application', action: 'render_404'
end
