class CreateImageShopGuides < ActiveRecord::Migration[5.1]
  def change
    create_table :image_shop_guides do |t|
      t.references :shop, foreign_key: true, null:false
      t.references :image, foreign_key: true, null:false
      t.referenses :guide, foreign_key: true, null:false
    end
  end
end
