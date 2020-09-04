class AddPropertyTypeToProperty < ActiveRecord::Migration[6.0]
  def change
    add_column :properties, :property_type, :string
  end
end
