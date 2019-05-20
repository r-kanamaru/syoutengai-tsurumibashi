class CreatePlans < ActiveRecord::Migration[5.1]
  def change
        create_table :plans do |t|
      t. :user, foreign_key: true, null:false, default: ""
    end
  end
end
