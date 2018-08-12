class RenameReplyToToMicropost < ActiveRecord::Migration
  def change
    rename_column :microposts, :reply_to, :reply_id
  end
end
