class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name,           null: false
      t.string :prefeture
      t.string :discription,           null: false
      t.integer :delivery_day, default: 0
      t.string :delively_method
      t.integer :delivery_burden_fee, default: 0
      t.references :delivery_area, foregn_key: true
      t.references :item_category, foregn_key: true
      t.integer :price,           null: false
      t.references :brand, foregn_key: true
      t.references :user, foregn_key: true
      t.references :buyer, foregn_key: true
      t.timestamps
    end
  end
end