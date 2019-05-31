class CreateAdresses < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.references :user, foreign_key: true, null:false, default: ""
      t.string :postal_code, null:false, default: ""
      t.string :prefecture, null:false
      t.string :city, null:false
      t.string :adress, null:false
      t.string :build_name, null:false
    end
  end
end
