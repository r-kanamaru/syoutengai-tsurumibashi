class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.text :logo, null:false
      t.text :outside, null:false
      t.text :inside, null:false
      t.text :dispray, null:false
      t.text :item, null:false
      t.text :owner, null:false
    end
  end
end
