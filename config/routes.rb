Rails.application.routes.draw do
  resources :songs, only: [:show, :index]
  resources :artists, only: [:show, :index]

  resources :artists do
    resources :songs, only: [:index, :show]
  end
end
