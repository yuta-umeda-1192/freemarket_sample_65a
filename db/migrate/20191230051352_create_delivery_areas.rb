class CreateDeliveryAreas < ActiveRecord::Migration[5.2]
  def change
    create_table :delivery_areas do |t|
      t.integer :name,           null: false, default: 0
      t.timestamps
    end
  end
end
