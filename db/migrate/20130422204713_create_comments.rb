class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :commenter
      t.text :body
      t.references :feedback

      t.timestamps
    end
    add_index :comments, :feedback_id
  end
end
