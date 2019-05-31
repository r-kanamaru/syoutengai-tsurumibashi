class CreateImageShopGuides < ActiveRecord::Migration[5.1]
  def change
    create_table :image_shop_guides do |t|
      t.references :shop, foreign_key: true, null:false, default: ""
      t.references :image, foreign_key: true, null:false, default: ""
      t.referenses :guide, foreign_key: true, null:false, default: ""
    end
  end
end
