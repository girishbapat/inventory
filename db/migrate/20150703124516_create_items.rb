class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :desc
      t.integer :quantity
      t.float :unitPrice
      t.integer :minQty
      t.integer :maxQty
      t.string :sku
      t.binary :image
      t.boolean :status
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
