class CreateCategoryShops < ActiveRecord::Migration[5.1]
  def change
    create_table :category_shops do |t|
      t.references :category, foreign_key: true, null:false, default: ""
      t.references :shop, foreign_key: true, null:false, default: ""
    end
  end
end
