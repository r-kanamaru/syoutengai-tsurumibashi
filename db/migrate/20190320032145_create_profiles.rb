class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true, null:false, default: ""
      t.string :first_name, null:false, default: ""
      t.string :last_name, null:false, default: ""
      t.string :first_name_kana, null:false, default: ""
      t.string :last_name_kana, null:false, default: ""
      t.string :birth_year, null:false, default: ""
      t.string :birth_month, null:false, default: ""
      t.string :birth_day, null:false, default: ""
      t.string :gender, null:false, default: ""
      t.string :landline_number, null:false, default: ""
      t.string :mobile_phone_number, null:false, default: "",limit:11, unique: true
      t.text :introduction, null:false, default: ""
      t.text :avatar,null:false,default:""
      t.integer :switching_publication,null:false,defaoult:""

#adressで定義する
#      t.string :postal_code, null:false, default: "",limit: 7
#      t.string :prefecture, null:false, default: ""
#      t.string :city, null:false, default: ""
#     t.string :adress, null:false, default: ""
#      t.string :building_name, null:false, default: ""

#privillegesで定義する
#      t.integer :privileges, null:false, default: 2
      t.timestamps
    end
  end
end
