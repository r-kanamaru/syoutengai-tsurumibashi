class CreatePlans < ActiveRecord::Migration[5.1]
  def change
    create_table :plans do |t|
      t. :user, foreign_key: true, null:false, default: ""
      t.integer
      t.integer
      t.integer
      t.integer
      t.integer
      t.integer
      t.integer
      t.integer
      t.integer
      t.integer
      t.integer
      t.integer
      t.integer
      t.integer
      t.integer
    end
  end
end
