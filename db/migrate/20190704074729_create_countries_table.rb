class CreateCountriesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.string :name
      t.string :print_name
      t.decimal :inflation
      t.decimal :corporate_tax
      t.decimal :interest_rate
      t.decimal :unemployment
      t.decimal :income_tax
      t.decimal :gdp
      t.decimal :gov_debt_to_gdp
      t.decimal :bank_balance_sheet
      t.decimal :central_bank
      t.decimal :budget
    end
  end
end
