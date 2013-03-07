class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :difficulty
      t.text :description
      t.references :lesson

      t.timestamps
    end
    add_index :exercises, :lesson_id
  end
end
