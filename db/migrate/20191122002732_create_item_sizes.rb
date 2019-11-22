class CreateItemSizes < ActiveRecord::Migration[6.0]
  def change
    create_table :item_sizes do |t|
      t.references :item, null: false, foreign_key: true
      t.references :size, null: false, foreign_key: true

      t.timestamps
    end
  end
end
