WunderTarot::Application.routes.draw do
  root to: "landing_pages#index"

  get "/tarot-cards/major-arcana", to: "tarot_cards#major_arcana"
end

