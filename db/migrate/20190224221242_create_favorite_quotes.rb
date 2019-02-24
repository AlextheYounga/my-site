class CreateFavoriteQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :favorite_quotes do |t|
      t.text :quote
      t.string :name
    end
  end
end
