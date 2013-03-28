Rails.application.routes.draw do

  resources :posts

  root :to => 'posts#index'

  mount UeditorRails::Engine => "/ueditor"
end
