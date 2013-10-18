RedditClone::Application.routes.draw do

  resources :users, :subs, :links
  resource :session

end
