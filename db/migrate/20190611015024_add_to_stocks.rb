class AddToStocks < ActiveRecord::Migration[5.2]
  def change
    add_column :stocks, :industry, :string
    add_column :stocks, :description, :string
    add_column :stocks, :primary_exchange, :string
    add_column :stocks, :gross_profit, :decimal
    add_column :stocks, :net_income, :decimal
    add_column :stocks, :total_assets, :decimal
    add_column :stocks, :total_liabilities, :decimal
    add_column :stocks, :total_debt, :decimal
    add_column :stocks, :pe_ratio, :decimal
    add_column :stocks, :moving_average, :decimal
    add_column :stocks, :debt_to_assets, :decimal
    add_column :stocks, :net_worth, :decimal
  end
end
