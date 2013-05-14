class AddReadToFlashMessages < ActiveRecord::Migration
  def change
  	add_column :flash_messages, :read, :boolean, :default => false
  end
end
