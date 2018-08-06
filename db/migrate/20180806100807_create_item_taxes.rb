class CreateItemTaxes < ActiveRecord::Migration
  def change
    create_table :item_taxes do |t|

      t.timestamps null: false
    end
  end
end
