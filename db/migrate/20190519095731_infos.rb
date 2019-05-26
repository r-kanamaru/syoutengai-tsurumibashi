class CreateInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :infos do |t|
      t.references :shop, foreign_key: true, null:false, default: ""
      t.text :title,
      t.text :introduction,
      t.text :content,
      t.text :menu,
      t.text :message,
      t.text :switching_publication,
    end
  end
end
