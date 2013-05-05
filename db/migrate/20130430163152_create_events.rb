class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :start
      t.datetime :end
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
