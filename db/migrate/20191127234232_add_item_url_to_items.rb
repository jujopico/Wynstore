class AddItemUrlToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :itemURL, :string
  end
end
