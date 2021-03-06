Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "lists#index"

  resources :lists, only: [:index,  :show, :new, :create, :destroy] do
    # to create a bookmark, we need movie_id and list_id!
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
end
