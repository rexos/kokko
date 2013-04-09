class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :training_id
      t.integer :lesson_id
      t.DataTime :start_time

      t.timestamps
    end
  end
end
