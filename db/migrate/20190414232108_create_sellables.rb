class CreateSellables < ActiveRecord::Migration[5.2]
  def change
    create_table :sellables do |t|
      t.string :title
      t.string :address
      t.integer :price
      t.string :description
      t.boolean :completed

      t.timestamps
    end
  end
end
