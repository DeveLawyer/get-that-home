class CreateContacteds < ActiveRecord::Migration[6.0]
  def change
    create_table :contacteds do |t|
      t.references :property, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
