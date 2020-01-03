class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :name
      t.string :src
      # text型のが良いかも
      t.references :item, foregn_key: true
      t.timestamps
    end
  end
end