class TarotCard < ActiveRecord::Base
  attr_accessible :name, :meaning, :description, :major_arcana,
        :major_arcana_number, :suit_number, :suit, :astrology
end
