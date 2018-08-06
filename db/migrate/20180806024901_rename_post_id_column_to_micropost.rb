class RenamePostIdColumnToMicropost < ActiveRecord::Migration
  def change
    rename_column :microposts, :post_id, :reply_to 
  end
end
