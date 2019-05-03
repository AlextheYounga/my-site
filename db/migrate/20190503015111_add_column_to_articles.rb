class AddColumnToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :editor1, :text
  end
end
