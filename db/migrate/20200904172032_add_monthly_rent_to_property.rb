class AddMonthlyRentToProperty < ActiveRecord::Migration[6.0]
  def change
    add_column :properties, :monthly_rent, :float
  end
end
