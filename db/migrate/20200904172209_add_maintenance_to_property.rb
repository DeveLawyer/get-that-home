class AddMaintenanceToProperty < ActiveRecord::Migration[6.0]
  def change
    add_column :properties, :maintenance, :float
  end
end
