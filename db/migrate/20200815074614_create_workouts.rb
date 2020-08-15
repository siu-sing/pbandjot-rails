class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.string :workout_name
      t.string :workout_type
      t.text :description
      t.string :prescribed_male
      t.string :prescribed_female

      t.timestamps
    end
  end
end
