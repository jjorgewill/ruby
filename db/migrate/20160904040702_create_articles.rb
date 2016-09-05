class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.references :user, foreign_key: true
      t.text :body
      t.string :title

      t.timestamps
    end
  end
end
