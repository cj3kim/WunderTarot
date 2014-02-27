class CreateTarotCards < ActiveRecord::Migration
  def change
    create_table :tarot_cards do |t|
      t.string  :name

      t.text    :meaning
      t.text    :description

      t.boolean :major_arcana

      t.integer :major_arcana_number
      t.integer :suit_number

      t.string  :suit
      t.string  :astrology

      t.timestamps
    end
  end
end
