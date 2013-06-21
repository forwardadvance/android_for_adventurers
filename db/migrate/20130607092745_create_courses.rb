class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :slug
      t.string :title
      t.string :path
      t.timestamps
    end
  end
end
