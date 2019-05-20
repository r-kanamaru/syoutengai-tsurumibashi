class CreatePrivilleges < ActiveRecord::Migration[5.1]
  def change
    create_table :privilleges do |t|
      t. :user, foreign_key: true, null:false, default: ""
    end
  end
end
