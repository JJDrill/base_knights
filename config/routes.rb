Rails.application.routes.draw do
  # new knights game
  get 'knights', to: 'knights#home'

  get 'knights/game', to: 'knights#game'

end
