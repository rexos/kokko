class AddProgramIdToLesson < ActiveRecord::Migration
  def change
    add_column :lessons, :program_id, :integer
  end
end
