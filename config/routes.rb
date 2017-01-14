Rails.application.routes.draw do
  resources :ducks

  root 'topics#index'
  resources :topics do
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    member do
      post 'upvote'
      post 'downvote'
    end
  end
  get '/about/', to: 'topics#about'
end
