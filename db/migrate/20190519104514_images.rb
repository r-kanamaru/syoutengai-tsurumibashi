class CreateImages < ActiveRecord::Migration[5.1]
  def change
        create_table :images do |t|
      t. :user, foreign_key: true, null:false, default: ""
    end
  end
end
