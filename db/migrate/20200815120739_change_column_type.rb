class ChangeColumnType < ActiveRecord::Migration[6.0]
  def change
    change_column :records, :pb_weight, :integer, using: "pb_weight::integer"
  end
end
