class AddPositionToStocks < ActiveRecord::Migration[5.2]
  def change
    add_column :stocks, :position, :string
  end
end
