class AddColumnsToHumanBonds < ActiveRecord::Migration
  def change
    add_column :human_bonds, :patron_id, :integer
    add_column :human_bonds, :band_id,   :integer
  end
end
