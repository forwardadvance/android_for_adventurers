class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :title
      t.string :slug
      t.string :path
      t.integer :course_id
      t.timestamps
    end
    add_index :sections, :slug
  end
end