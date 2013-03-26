class AddDifficultyToPrograms < ActiveRecord::Migration
  def change
    add_column :programs, :difficulty, :string
  end
end
