class CreateLogins < ActiveRecord::Migration
  def change
    create_table :logins do |t|
      t.integer :person_id
      t.string :login_key
      t.string :expires

      t.timestamps
    end
    add_index :logins, :person_id
    add_index :logins, :login_key
  end
end
