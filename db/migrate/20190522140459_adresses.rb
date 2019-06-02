class CreateAdresses < ActiveRecord::Migration[5.1]
  def change
    create_table :adresses do |t|
      t.references :user, foreign_key: true, null:false
      t.string :postal_code, null:false, default: ""
      t.string :prefecture, null:false, default: ""
      t.string :city, null:false, default: ""
      t.string :adress, null:false, default: ""
      t.string :build_name, null:false, default: ""
    end
  end
end
