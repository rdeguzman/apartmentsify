class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :property_type

      t.string :address
      t.string :suburb
      t.string :postcode
      t.string :state

      t.text   :description

      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :car_spaces

      t.boolean :active

      t.references :user, index: true

      t.timestamps null: false
    end

    add_foreign_key :properties, :users
  end
end
