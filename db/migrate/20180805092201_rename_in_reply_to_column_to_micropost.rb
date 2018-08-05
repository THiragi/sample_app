class RenameInReplyToColumnToMicropost < ActiveRecord::Migration
  def change
    rename_column :microposts, :in_reply_to, :post_id
  end
end
