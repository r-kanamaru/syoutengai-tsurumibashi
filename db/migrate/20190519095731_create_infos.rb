class CreateInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :infos do |t|
      t.references :shop, foreign_key: true, null:false
      t.text :title, null:false
      t.text :introduction, null:false
      t.text :content, null:false
      t.text :menu, null:false
      t.text :message, null:false
      t.text :switching_publication, null:false
    end
  end
end
