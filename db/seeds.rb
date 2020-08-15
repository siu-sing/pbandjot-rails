# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

w_seed = [
  { "workout_name" => "Back Squat", "workout_type" => "weightlifting" },
  { "workout_name" => "Front Squat", "workout_type" => "weightlifting" },
  { "workout_name" => "Bench Press", "workout_type" => "weightlifting" },
  { "workout_name" => "Clean & Jerk", "workout_type" => "weightlifting" },
  { "workout_name" => "Snatch", "workout_type" => "weightlifting" },
  { "workout_name" => "Power Clean", "workout_type" => "weightlifting" },
  { "workout_name" => "Power Snatch", "workout_type" => "weightlifting" },
]
b_seed = [
  { "workout_name" => "Isabel", "workout_type" => "benchmark", "description" => "30 snatches for time", "prescribed_male" => "135", "prescribed_female" => "95" },
  { "workout_name" => "Grace", "workout_type" => "benchmark", "description" => "30 clean & jerks for time", "prescribed_male" => "135", "prescribed_female" => "95" },
  { "workout_name" => "Karen", "workout_type" => "benchmark", "description" => "150 wall balls", "prescribed_male" => "20", "prescribed_female" => "14" },
]

w_seed.each_with_index do |q, idx|
  Workout.create!(
    workout_name: q["workout_name"],
    workout_type: q["workout_type"],
  )
end

b_seed.each_with_index do |q, idx|
  Workout.create!(
    workout_name: q["workout_name"],
    workout_type: q["workout_type"],
    description: q["description"],
    prescribed_male: q["prescribed_male"],
    prescribed_female: q["prescribed_female"],
  )
end
