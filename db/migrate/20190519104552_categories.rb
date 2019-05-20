class CreateCategories < ActiveRecord::Migration[5.1]
  def change
        create_table :categories do |t|
      t. :user, foreign_key: true, null:false, default: ""
    end
  end
end
