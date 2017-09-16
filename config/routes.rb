Rails.application.routes.draw do

  get '', to:'home#index',        as:'home'

  get '', to:'send_words#index',  as:'send_words'
  get '', to:'send_words#new',    as:'send_words_new'
  get '', to:'send_words#create', as:'send_words_create'

end
