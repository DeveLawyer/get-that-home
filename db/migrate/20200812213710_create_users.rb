class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.text :phone_number
      t.string :type

      t.timestamps
    end
  end
end
