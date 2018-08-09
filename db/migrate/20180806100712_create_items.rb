class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
    	t.integer :item_category_id
    	t.string :name
    	t.float :rate
      t.timestamps null: false
    end
  end
end
