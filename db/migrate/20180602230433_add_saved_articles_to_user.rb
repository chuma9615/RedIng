class AddSavedArticlesToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :saved_articles, :integer, array: true, default: []
  end
end
