class CreateItemStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :item_statuses do |t|
      t.string :item_status,      null: false
      t.timestamps
    end
  end
end