class CreateHumanBondRequests < ActiveRecord::Migration
  def change
    create_table :human_bond_requests do |t|
      t.boolean :accepted
      t.text    :message

      t.integer :patron_id
      t.integer :band_id
      t.timestamps
    end
  end
end
