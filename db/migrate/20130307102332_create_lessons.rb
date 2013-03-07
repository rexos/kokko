class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :title
      t.references :program

      t.timestamps
    end
    add_index :lessons, :program_id
  end
end
