class AddIndexes < ActiveRecord::Migration[5.1]
  def change
  	add_index :photos, :user_id
  end
end
