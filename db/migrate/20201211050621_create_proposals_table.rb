class CreateProposalsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :proposals_tables do |t|
      t.string :slug
      t.string :client
      t.string :title
      t.text :intro
      t.text :body
      t.text :footer
      t.string :projects, array: true, defaults: []
      t.string :path
      t.string :client_key
      t.string :client_url
    end
  end
end