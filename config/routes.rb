Rails.application.routes.draw do
  resources :tweet_deets
  resources :change_table_tweet_infos
  resources :tweet_infos
  resources :models
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
