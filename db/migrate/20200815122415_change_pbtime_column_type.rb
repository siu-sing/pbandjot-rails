class ChangePbtimeColumnType < ActiveRecord::Migration[6.0]
  def change
    change_column :records, :pb_time, :time
  end
end
