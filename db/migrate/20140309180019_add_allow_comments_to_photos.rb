class AddAllowCommentsToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :allow_comments, :boolean
  end
end
