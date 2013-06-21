class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.integer :person_id
      t.string :exercise_slug
      t.string :section_slug
      t.text :text

      t.timestamps
    end
  end
end
