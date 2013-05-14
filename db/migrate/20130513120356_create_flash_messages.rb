class CreateFlashMessages < ActiveRecord::Migration
  def change
    create_table :flash_messages do |t|
      t.text :body
      t.references :user
      t.references :lesson

      t.timestamps
    end
    add_index :flash_messages, :user_id
    add_index :flash_messages, :lesson_id
  end
end
