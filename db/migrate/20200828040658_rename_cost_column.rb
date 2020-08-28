class RenameCostColumn < ActiveRecord::Migration[6.0]
  def self.up
    rename_column :positions, :cost, :cost_cents
  end

  def self.down
    rename_column :positions, :cost_cents, :cost
  end
end
