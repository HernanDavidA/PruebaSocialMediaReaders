class DropCategoryTable < ActiveRecord::Migration[7.2]
  def change
    if ActiveRecord::Base.connection.table_exists?("category")
      drop_table :category
    end
  end
end
