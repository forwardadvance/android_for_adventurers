class CreatePageviews < ActiveRecord::Migration
  def up
    create_table :page_views do |t|
      t.integer :person_id
      t.integer :url
      t.string :referrer
      t.string :ip
      t.text :params
      t.timestamps
    end
    add_index :page_views, :person_id
  end

  def down
    drop_table :page_views
  end
end
