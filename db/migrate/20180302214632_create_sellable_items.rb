class CreateSellableItems < ActiveRecord::Migration[5.1]
  def change
    create_table :sellable_items do |t|
      t.string :name
      t.integer :value

      t.timestamps
    end
  end
end
