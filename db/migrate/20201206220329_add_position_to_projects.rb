class AddPositionToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :excerpt, :text
    add_column :projects, :position, :integer
    remove_column :projects, :color
    remove_column :projects, :bg_color
  end
end
