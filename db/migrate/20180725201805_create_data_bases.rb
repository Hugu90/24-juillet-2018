class CreateDataBases < ActiveRecord::Migration[5.2]
  def change
    create_table :data_bases: likes do |t|
      t.belongs_to :name_article:
      t.belongs_to :article, index:true 
      t.belongs_to :description, index:true
      t.belongs_to :category, index:true
      t.belongs_to :comment : index:true

      t.timestamps
    end
  end
end
