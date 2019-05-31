class CreateInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :infos do |t|
      t.references :shop, foreign_key: true, null:false, default: ""
      t.text :title, null:false, default: ""
      t.text :introduction, null:false, default: ""
      t.text :content, null:false, default: ""
      t.text :menu, null:false, default: ""
      t.text :message, null:false, default: ""
      t.text :switching_publication, null:false, default: ""
    end
  end
end
