class TarotCardsController < ActionController::Base

  def index
    @all = TarotCard.all

    render json: @all.to_json, status: 200
  end

  def major_arcana
    major_arcana_cards = TarotCard.where(major_arcana: true)

    render json: major_arcana_cards, status: 200
  end
end
