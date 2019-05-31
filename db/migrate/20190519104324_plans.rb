class CreatePlans < ActiveRecord::Migration[5.1]
  def change
    create_table :plans do |t|
      t.references :shop, foreign_key: true, null:false, default: ""
      t.integer :plan, null:false, default: ""
      t.text :title, null:false, default: ""
      t.text :page_path, null:false, default: ""
    end
  end
end
