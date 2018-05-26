class CreateJoinTableUserForum < ActiveRecord::Migration[5.1]
  def change
    create_join_table :users, :forums do |t|
       t.index :user_id
       t.index :forum_id
    end
  end
end
