json.extract! workout, :id, :workout_name, :workout_type, :description, :prescribed_male, :prescribed_female, :created_at, :updated_at
json.url workout_url(workout, format: :json)
