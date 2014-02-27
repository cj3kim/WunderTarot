class AddRejectedToHumanBondRequests < ActiveRecord::Migration
  def change
    add_column :human_bond_requests, :rejected, :boolean
  end
end
