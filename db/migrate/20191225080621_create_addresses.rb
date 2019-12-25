class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.integer :postal_code,      null: false
      t.string  :prefeture,        null: false
      t.string  :city,             null: false
      t.string  :address,          null: false
      t.integer :user_id,         null: false, foreign_key: true
      t.string  :building_name,    null: false
      t.timestamps
    end
  end
end
