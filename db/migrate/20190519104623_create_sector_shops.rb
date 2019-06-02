class CreateSectorShops < ActiveRecord::Migration[5.1]
  def change
    create_table :sector_shops do |t|
      t.references :shop, foreign_key: true, null:false
      t.references :sector, foreign_key: true, null:false
    end
  end
end
