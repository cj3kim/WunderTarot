WunderTarot::Application.routes.draw do
  root to: "landing_pages#index"

  get "/the-tarot/major-arcana", to: "tarot_cards#major_arcana"
  get "/the-tarot/all", to: "tarot_cards#index"
end

