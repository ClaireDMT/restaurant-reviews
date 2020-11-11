Rails.application.routes.draw do
  resources :restaurants do
    # "/restaurants/...."
    resources :reviews, only: [:new, :create]

    collection do
      get :top
      # get "/restaurants/top", to: "restaurants#top", as: :top
      # "restaurants/top"
      # get :selection
    end

    member do
      get :chef
    end
  end

  resources :reviews, only: [:destroy]
end
