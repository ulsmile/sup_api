Rails.application.routes.draw do
    resources :player, param: :player_id
    resources :register, param: :player_id
    get 'login' => 'sessions#new'
    post 'login' => 'sessions#create'
    delete 'logout' => 'sessions#destroy'
end

