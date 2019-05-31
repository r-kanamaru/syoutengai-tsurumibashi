class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.text :logo, null:false, default: ""
      t.text :outside, null:false, default: ""
      t.text :inside, null:false, default: ""
      t.text :dispray, null:false, default: ""
      t.text :item, null:false, default: ""
      t.text :owner, null:false, default: ""
    end
  end
end
