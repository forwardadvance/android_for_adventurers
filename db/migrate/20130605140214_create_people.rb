class CreatePeople < ActiveRecord::Migration
  def up
    create_table :people do |t|
      t.string :name
      t.string :pirate_name
      t.string :email
      t.string :source
      t.string :level
      t.string :current_exercise_id
      t.boolean :admin, :default => false
      t.string :enabled, :default => true
      t.string :password_digest

      t.timestamps
    end
    add_index :people, :email
    Person.create :name => "Nicholas Johnson", :pirate_name => "Captain JavaScript", :email => "captain.javascript@forwardadvance.com", :admin => true, :password => "arrrr", :password_confirmation => "arrrr"
  end

  def down
    drop_table :people
  end
end
