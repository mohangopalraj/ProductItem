class CreateItemTaxes < ActiveRecord::Migration
  def change
    create_table :item_taxes do |t|
      t.integer :item_id
      t.string :tax_type
      t.decimal :tax
      t.timestamps null: false
    end
  end
end
