class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.integer :prev_exercise_id
      t.integer :next_exercise_id
      t.string :title
      t.timestamps
    end
  end
end
