Moru::Application.routes.draw do

  # OpenID
  match "/auth/:provider/callback" => "sessions#create"
  match "/auth/failure" => "sessions#failure"
  match "/signout" => "session#destroy", :as => :signout
  match "/signin" => "sessions#new", :as => :signin

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'home#index'
end
