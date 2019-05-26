class CreateShops < ActiveRecord::Migration[5.1]
  def change
    create_table :shops do |t|
      t.references :user, foreign_key: true, null:false, default: ""
      t.text :copy,
      t.string :name
      t.string :name_kana
      t.string :founded,
      t.string :openning,
      t.string :closed,
      t.string :town_number,
      t.string :tel_number,
      t.string :fax_number,
      t.string :email,
      t.text :url,
      t.text :map_api,
      t.integer :switching_publiation,
    end
  end
end
