class CreateAdmins < ActiveRecord::Migration[5.1]
  def change
    create_table :admins do |t|
      t.integer :user_id
      t.integer :forum_id
      t.boolean :subscribe, :default => false
      t.boolean :admin, :default => false
      t.timestamps
    end
  end
end
