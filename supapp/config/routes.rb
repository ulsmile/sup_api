Rails.application.routes.draw do
    resources :players, param: :player_id
    resources :register, param: :player_id
    
end
