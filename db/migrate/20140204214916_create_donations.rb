class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|

      t.integer :amount
      t.integer :patron_id
      t.integer :band_id

      t.timestamps
    end
  end
end
