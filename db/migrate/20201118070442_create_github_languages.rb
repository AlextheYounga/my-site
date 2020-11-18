class CreateGithubLanguages < ActiveRecord::Migration[5.2]
  def change
    create_table :github_languages do |t|
      t.string :language
      t.float :value
      t.timestamps
    end
  end
end
