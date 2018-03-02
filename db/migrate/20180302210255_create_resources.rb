class CreateResources < ActiveRecord::Migration[5.1]
  def change
    create_table :resources do |t|
      t.references :item, polymorphic: true
      t.references :player, foreign_key: true
      t.boolean :gone

      t.timestamps
    end
  end
end
