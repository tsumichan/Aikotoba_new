class RenameMessagesIdColumnToFavorites < ActiveRecord::Migration[5.0]
  def change
    rename_column :favorites, :messages_id, :message_id
  end
end
