class CreateSeens < ActiveRecord::Migration[6.0]
  def change
    create_table :seens do |t|
      t.references :property, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
