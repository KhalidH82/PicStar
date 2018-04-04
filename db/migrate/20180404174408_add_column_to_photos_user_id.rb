class AddColumnToPhotosUserId < ActiveRecord::Migration[5.1]
  def change
  	add_column :photos, :user_id, :int
  end
end
