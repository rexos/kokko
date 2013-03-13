class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.integer :user_id
      t.integer :association_id

      t.timestamps
    end
    add_index :statuses, :user_id
    add_index :statuses, :association_id
    add_index :statuses, [:user_id,:association_id], :unique => true
  end
end
