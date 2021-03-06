class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :token
      t.boolean :online, :default => false

      t.timestamps
    end
    add_index :users, :email, :unique => true
  end
end
