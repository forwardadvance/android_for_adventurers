class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :slug
      t.integer :exercise_id
      t.integer :order
      t.timestamps
    end
  end
end
