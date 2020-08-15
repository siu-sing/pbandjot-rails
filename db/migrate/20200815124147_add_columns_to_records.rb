class AddColumnsToRecords < ActiveRecord::Migration[6.0]
  def change
    add_column :records, :pb_time_min, :integer
    add_column :records, :pb_time_sec, :integer
  end
end
