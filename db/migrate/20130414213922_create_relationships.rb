class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :follower
      t.integer :followed

      t.timestamps
    end
    add_index :relationships, :followed
    add_index :relationships, [:follower, :followed], :unique => true
  end
end
