class CreateHumanBonds < ActiveRecord::Migration
  def change
    create_table :human_bonds do |t|
      t.integer :monthly_contribution
      t.boolean :patron_bond

      t.timestamps
    end
  end
end
