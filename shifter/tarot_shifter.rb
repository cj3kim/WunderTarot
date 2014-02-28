require './struct_csv'

class Shifter

  def initialize
    @csv_ary = StructCSV.new('./shifter/tarot_cards.csv').csv_ary
  end

  def create_tarot_cards
    arcana_regex = /major_arcana/i
    @csv_ary.each do |obj|
      tarot_card = TarotCard.new

      tarot_card.suit = obj.suit
      tarot_card.name = obj.name
      tarot_card.meaning = obj.meaning
      tarot_card.astrology = obj.astrology

      if arcana_regex.match(tarot_card.suit)
        tarot_card.major_arcana = true
        tarot_card.major_arcana_number = obj.number
      else
        tarot_card.major_arcana = false
        tarot_card.suit_number = obj.number unless obj.number.nil?
      end
      tarot_card.save

      if tarot_card.major_arcana === true
        puts "Processed #{obj.name}. Number #{obj.number}"
      else
        puts "Processed #{obj.name.capitalize} of #{obj.suit.capitalize}."
      end
    end
  end
end
