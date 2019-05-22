class CreatePrivilleges < ActiveRecord::Migration[5.1]
  def change
    create_table :privilleges do |t|
      t.references :user, foreign_key: true, null:false, default: ""
      t.integer :privilleges,nul:false,default:""
    end
  end
end
