class CreateFlashMessages < ActiveRecord::Migration
  def change
    create_table :flash_messages do |t|
      t.text :body
      t.references :program
      t.integer :from
      t.integer :to

      t.timestamps
    end
    add_index :flash_messages, :program_id
  end
end
