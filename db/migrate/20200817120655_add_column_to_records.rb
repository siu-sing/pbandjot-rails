class AddColumnToRecords < ActiveRecord::Migration[6.0]
  def change
    add_column :records, :prescribed, :boolean
  end
end
