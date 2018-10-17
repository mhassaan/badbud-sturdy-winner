class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.decimal :total, precision: 8, scale: 2
      t.decimal :sub_total, precision: 8, scale: 2

      t.timestamps
    end
  end
end
