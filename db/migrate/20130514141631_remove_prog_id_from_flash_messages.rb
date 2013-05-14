class RemoveProgIdFromFlashMessages < ActiveRecord::Migration
  def change
  	remove_column :flash_messages, :program_id
  end
end
