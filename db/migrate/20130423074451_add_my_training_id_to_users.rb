class AddMyTrainingIdToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :my_training_id, :integer, :default => nil
  end
end
