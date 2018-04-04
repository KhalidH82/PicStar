class AddColumnToUsers < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :photo_id, :int
  end
end
