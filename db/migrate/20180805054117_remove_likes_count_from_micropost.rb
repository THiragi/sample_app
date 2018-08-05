class RemoveLikesCountFromMicropost < ActiveRecord::Migration
  def change
    remove_column :microposts, :likes_count, :integer
  end
end
