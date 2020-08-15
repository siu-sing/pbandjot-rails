class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.string :pb_weight
      t.interval :pb_time
      t.date :pb_date
      t.text :notes

      t.timestamps
    end
  end
end
