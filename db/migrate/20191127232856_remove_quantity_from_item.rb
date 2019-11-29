class RemoveQuantityFromItem < ActiveRecord::Migration[6.0]
  def change

    remove_column :items, :quantity, :integer
  end
end
