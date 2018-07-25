class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :name
      t.text :description
      t.string :auteurs
      t.integer :date_pub

      t.timestamps
    end
  end
end
