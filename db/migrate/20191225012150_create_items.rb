class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :prefeture
      t.string :discription
      t.integer :delivery_day, default: 0
      t.string :delively_method
      t.string :delivery_burden_fee
      t.string :item_category
      t.integer :price
      t.references :brand, foregn_key: true
      t.references :user, foregn_key: true
      t.references :buyer, foregn_key: true
      t.timestamps
    end
  end
end