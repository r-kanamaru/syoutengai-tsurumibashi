class CreateAdresses < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.references :user, foreign_key: true, null:false, default: ""
      t.string :postal_code,
      t.string :prefecture,
      t.string :city,
      t.string :adress,
      t.string :build_name,
    end
  end
end
