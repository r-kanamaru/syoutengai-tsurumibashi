class CreateSectorShops < ActiveRecord::Migration[5.1]
  def change
    create_table :sector_shops do |t|
      t.references :shop, foreign_key: true, null:false, default: ""
      t.references :sector, foreign_key: true, null:false, default: ""
    end
  end
end
