class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.string :op
      t.references :forum, foreign_key: true
      t.timestamps
    end
  end
end
