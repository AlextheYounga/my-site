class CreateBookCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :book_categories do |t|
      t.string :name
      t.string :html_selector
      t.timestamps
    end
  end
end
