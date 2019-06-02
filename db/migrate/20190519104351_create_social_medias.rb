class CreateSocialMedias < ActiveRecord::Migration[5.1]
  def change
    create_table :social_medias do |t|
      t.references :shop, foreign_key: true, null:false
      t.text :twitter, null:false
      t.text :facebook, null:false
      t.text :instagram, null:false
    end
  end
end
