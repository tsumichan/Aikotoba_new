Rails.application.routes.draw do
  # scope :hoge do
  #   match '',            to:'hoge#hoge',      via:'get',  as:'hoge'
  #   match '/hogehoge',   to:'hoge#hogehoge',  via:'get',  as:'hoge_hoge'
  # end

  match '',         to:'log_in#index',  via:'get',  as:'log_in'
  match '/home',    to:'home#index',    via:'get',  as:'root'

  scope :receive_words do
    match '',       to:'receive_words#index',  via:'get',  as:'receive_words'
    match '/show',  to:'receive_words#show',   via:'get',  as:'receive_words_show'
  end

  scope :send_words do
    match '',         to:'send_words#index',   via:'get',  as:'send_words'
    match '/new',     to:'send_words#new',     via:'get',  as:'send_words_new'
    match '/create',  to:'send_words#create',  via:'post', as:'send_words_create'
  end

  scope :users do
    match '',         to:'users#index',   via:'get',   as:'users'
    match '/new',     to:'users#new',     via:'get',   as:'users_new' #新規登録
    match '/create',  to:'users#create',  via:'post',  as:'users_create'
    match '/edit',    to:'users#edit',    via:'get',   as:'users_edit'
    match '/update',  to:'users#update',  via:'post',  as:'users_update'
    match '/delete',  to:'users#delete',  via:'get',   as:'users_delete'
  end

  scope :log_in do
    match '/new',     to:'log_in#new',     via:'get',   as:'log_in_new'
    match '/create',  to:'log_in#create',  via:'post',  as:'log_in_create'
  end

end
