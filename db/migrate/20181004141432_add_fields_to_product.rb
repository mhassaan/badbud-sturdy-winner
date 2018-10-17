class AddFieldsToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products,:name,:string 
    add_column :products,:desc,:text
    add_column :products,:strain_type,:string 
    add_column :products,:price,:decimal,precision: 8, scale: 2 
  end
end
