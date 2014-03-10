WunderTarot::Application.routes.draw do
  #subdomain
  constraints(lambda { |r| r.subdomain.present? && r.subdomain != 'www' && r.subdomain != "tapi-staging" }) do
    get '', to: 'landing_pages#subdomain'
  end

  root to: "landing_pages#index"

  get "/the-tarot/major-arcana", to: "tarot_cards#major_arcana"
  get "/the-tarot/all", to: "tarot_cards#index"
end

