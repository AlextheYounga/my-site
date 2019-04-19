class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :image_address
      t.string :image_alt
      t.text :project_link
    end
  end
end
