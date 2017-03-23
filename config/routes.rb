Rails.application.routes.draw do
  resources :posts do
  	resources :comments
  end

  devise_for :users, controllers: { :registrations => "registrations" } do 
    	resources :users, :only => [:show]
  	end

  	root to: "home#index"

  		get "/users/:id", to: "users#show", :as => :user

end
