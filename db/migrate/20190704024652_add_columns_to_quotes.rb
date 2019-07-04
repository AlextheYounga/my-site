class AddColumnsToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_column :favorite_quotes, :category, :string
  end
end
