class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :body
      t.integer :from
      t.integer :to

      t.timestamps
    end
  end
end
