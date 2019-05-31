class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.references :shop, foreign_key: true, null:false, default: ""
      t.string :postal_code, null:false, default: ""
      t.string :prefecture, null:false, default: ""
      t.string :city, null:false, default: ""
      t.string :adress, null:false, default: ""
      t.string :build_name, null:false, default: ""
    end
  end
end
