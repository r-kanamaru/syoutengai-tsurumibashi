class CreateCategorySectors < ActiveRecord::Migration[5.1]
  def change
    create_table :category_sectors do |t|
      t.references :category, foreign_key: true, null:false, default: ""
      t.referensec :sector, foreign_key: true, null:false, default: ""
    end
  end
end
