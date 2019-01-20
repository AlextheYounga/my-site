class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.integer :book_id
      t.string :title
      t.string :author
      t.text :description
      t.string :image_address
      t.string :image_alt
      t.string :category
      t.text :book_link
    end
  end
end
