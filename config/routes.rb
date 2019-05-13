Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'game', to: 'boards#show', as: :show_game
  post 'game', to: 'boards#create', as: :create_game
  post 'move', to: 'boards#move', as: :make_move
end
