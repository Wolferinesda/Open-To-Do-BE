class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :item_name
      t.string :description
      t.boolean :completed, default: false
      t.references :list, foreign_key: true

      t.timestamps
    end
  end
end
