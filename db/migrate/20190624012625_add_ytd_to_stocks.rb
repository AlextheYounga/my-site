class AddYtdToStocks < ActiveRecord::Migration[5.2]
  def change
    add_column :stocks, :ytd_change_percent, :float
  end
end