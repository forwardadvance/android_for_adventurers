class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :person_id
      t.integer :completed_exercise_id
      t.text :text
      t.text :html
      t.text :javascript

      t.timestamps
    end
  end
end
