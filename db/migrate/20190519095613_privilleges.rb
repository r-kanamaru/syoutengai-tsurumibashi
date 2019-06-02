class CreatePrivilleges < ActiveRecord::Migration[5.1]
  def change
    create_table :privilleges do |t|
      t.references :user, foreign_key: true, null:false
      t.integer :number,nul:false,default:1
    end
  end
end
