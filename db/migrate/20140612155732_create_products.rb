class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.float :price, default: 0.0
      t.string :sku
      t.boolean :in_stock, default: true
      t.text :description
      t.timestamps
    end
  end
end
