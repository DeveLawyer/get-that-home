class RemoveMonthlyRentFromProperty < ActiveRecord::Migration[6.0]
  def change
    remove_column :properties, :monthly_rent, :float
  end
end
