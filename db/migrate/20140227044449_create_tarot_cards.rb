class CreateTarotCards < ActiveRecord::Migration
  def change
    create_table :tarot_cards do |t|
      t.string :name
      t.text   :description
      t.string :type

      t.timestamps
    end
  end
end
