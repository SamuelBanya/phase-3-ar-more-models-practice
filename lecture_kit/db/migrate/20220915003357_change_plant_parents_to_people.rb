class ChangePlantParentsToPeople < ActiveRecord::Migration[5.2]
  def change
    # Related Ruby Docs page on 'rename_table' method:
    # https://api.rubyonrails.org/v7.0.4/classes/ActiveRecord/ConnectionAdapters/SchemaStatements.html#method-i-rename_table
    rename_table :plant_parents, :people
  end
end
