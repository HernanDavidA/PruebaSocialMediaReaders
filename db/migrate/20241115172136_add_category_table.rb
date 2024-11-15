class AddCategoryTable < ActiveRecord::Migration[7.2]
  def change
    create_table :category do |t|
      t.string :title
      t.text :description
      t.timestamps
    end
  end
end
