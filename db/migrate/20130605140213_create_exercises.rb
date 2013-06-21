class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :title
      t.string :slug
      t.string :partial
      t.string :section_id
      t.boolean :is_first_exercise
      t.boolean :is_last_exercise
      [:up, :up_right, :right, :down_right, :down, :down_left, :left, :up_left].each do |direction|
        t.string :"#{direction}_id"
        t.string :"#{direction}_description"
      end
      t.timestamps
    end
    add_index :exercises, :slug
  end
end
