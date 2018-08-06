class CreateItemCategories < ActiveRecord::Migration
  def change
    create_table :item_categories do |t|

      t.timestamps null: false
    end
  end
end
