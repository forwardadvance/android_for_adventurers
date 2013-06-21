class CreateCompletedExercises < ActiveRecord::Migration
  def change
    create_table :completed_exercises do |t|
      t.integer :person_id
      t.integer :exercise_slug
      t.integer :section_slug
      t.timestamps
    end

    add_index :completed_exercises, :person_id
    add_index :completed_exercises, :exercise_slug
    add_index :completed_exercises, :section_slug
  end
end
