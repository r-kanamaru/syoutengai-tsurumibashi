class CreateGuides < ActiveRecord::Migration[5.1]
  def change
    create_table :guides do |t|
      t.string :name, null:false, default: ""
      t.text :title, null:false
      t.text :introdution, null:false
      t.string :openning, null:false, default: ""
      t.string :closed, null:false, default: ""
      t.string :area, null:false, default: ""
      t.text :url, null:false
      t.string :location, null:false, default: ""
      t.string :access, null:false, default: ""
      t.text :map_api, null:false
      t.integer :switching_publication, null:false, default: 0
    end
  end
end
