class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :difficulty
      t.text :description
      t.string :video_url

      t.timestamps
    end
  end
end
