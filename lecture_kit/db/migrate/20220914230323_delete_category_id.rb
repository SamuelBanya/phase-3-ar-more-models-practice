class DeleteCategoryId < ActiveRecord::Migration[5.2]
  def change
    # Related Docs page:
    # https://apidock.com/rails/v5.2.3/ActiveRecord/ConnectionAdapters/SchemaStatements/remove_column
    # remove_column(table_name, column_name, type = nil, options = {}) public
    remove_column :plants, :category_id, :integer
  end
end
