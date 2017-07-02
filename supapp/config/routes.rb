Rails.application.routes.draw do
    resources :players, param: :player_id
    resources :register, param: :player_id
    get 'login' => 'sessions#new'
    post 'login' => 'sessions#create'
    delete 'logout' => 'sessions#destroy'
    namespace :api do
      get "/api/players", :to=> "players#index"
    end
end

