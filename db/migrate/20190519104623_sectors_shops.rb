class CreateSectorShops < ActiveRecord::Migration[5.1]
  def change
    create_table :sector_shops do |t|
      t. :user, foreign_key: true, null:false, default: ""
      t.integer
      t.integer
      t.integer
      t.integer
      t.integer
      t.integer
      t.integer
      t.integer
      t.integer
      t.integer
      t.integer
      t.integer
      t.integer
      t.integer
      t.integer
    end
  end
end
