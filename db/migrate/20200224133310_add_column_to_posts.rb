class AddColumnToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :hashtag_id, :integer
    add_foreign_key :posts, :hashtags
  end
end
