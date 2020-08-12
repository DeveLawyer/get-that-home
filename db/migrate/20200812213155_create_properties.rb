class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :address
      t.float :price
      t.integer :bedrooms
      t.float :bathrooms
      t.integer :area
      t.string :amenities_dpt
      t.string :amenities_bld
      t.string :close_by
      t.text :description
      t.string :type
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
