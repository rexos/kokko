class CreateAssociations < ActiveRecord::Migration
  def change
    create_table :associations do |t|
      t.integer :lesson_id
      t.integer :exercise_id
      t.text :repetitions

      t.timestamps
    end
    add_index :associations, :lesson_id
    add_index :associations, :exercise_id
    add_index :associations, [:lesson_id,:exercise_id], :unique => true
  end
end
