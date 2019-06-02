class CreateShops < ActiveRecord::Migration[5.1]
  def change
    create_table :shops do |t|
      t.references :user, foreign_key: true, null:false
      t.string :name, null:false, default: ""
      t.string :name_kana, null:false, default: ""
      t.text :copy, null:false, default: ""
      t.string :founded, null:false, default: ""
      t.string :openning, null:false, default: ""
      t.string :closed, null:false, default: ""
      t.string :town_number, null:false, default: ""
      t.string :tel_number, null:false, default: ""
      t.string :fax_number, null:false, default: ""
      t.string :email, null:false, default: ""
      t.text :url, null:false, default: ""
      t.text :map_api, null:false, default: ""
      t.integer :switching_publiation, null:false, default: 0
    end
  end
end
