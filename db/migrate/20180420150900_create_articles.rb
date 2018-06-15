class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.string :op
      t.string :op_id
      t.references :forum, foreign_key: true
      t.string :img
      t.timestamps
    end
  end
end
