class CreateImageShopGuides < ActiveRecord::Migration[5.1]
  def change
        create_table :image_shop_guides do |t|
      t. :user, foreign_key: true, null:false, default: ""
    end
  end
end
