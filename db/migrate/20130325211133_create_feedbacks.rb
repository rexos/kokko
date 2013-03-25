class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.integer :rating
      t.text :body
      t.references :user
      t.references :program

      t.timestamps
    end
    add_index :feedbacks, :user_id
    add_index :feedbacks, :program_id
  end
end
