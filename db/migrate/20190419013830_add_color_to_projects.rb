class AddColorToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :bg_color, :string
  end
end
