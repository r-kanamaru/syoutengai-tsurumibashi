class CreateSocialMedias < ActiveRecord::Migration[5.1]
  def change
    create_table :social_medias do |t|
      t.references :shop, foreign_key: true, null:false, default: ""
      t.text :twitter, null:false, default: ""
      t.text :facebook, null:false, default: ""
      t.text :instagram, null:false, default: ""
    end
  end
end
